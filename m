Return-Path: <devicetree+bounces-13625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C89A7DF5A4
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 16:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 97CE5B21119
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 15:05:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEEF61BDE6;
	Thu,  2 Nov 2023 15:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189821BDE2
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 15:04:57 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 847F9138;
	Thu,  2 Nov 2023 08:04:55 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 428792F4;
	Thu,  2 Nov 2023 08:05:37 -0700 (PDT)
Received: from pluto (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4ABEF3F738;
	Thu,  2 Nov 2023 08:04:53 -0700 (PDT)
Date: Thu, 2 Nov 2023 15:04:43 +0000
From: Cristian Marussi <cristian.marussi@arm.com>
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>
Cc: "sudeep.holla@arm.com" <sudeep.holla@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [RFC v5 2/5] drivers: firmware: scmi: Introduce
 scmi_get_max_msg_size function
Message-ID: <ZUO6iyNIbit7PCQ8@pluto>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <fdfedf6dd0196afd887049877eae9fce0fe63eb2.1698353854.git.oleksii_moisieiev@epam.com>
 <ZUNP6BeUd4Ba_rUp@pluto>
 <9c9660c1-ab64-4186-917d-2007d88ce7c7@epam.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9c9660c1-ab64-4186-917d-2007d88ce7c7@epam.com>

On Thu, Nov 02, 2023 at 01:57:24PM +0000, Oleksii Moisieiev wrote:
> Hi Cristian,
> 

Hi,

> Just found an interesting note in the PINCTRL_CONFIG_SET command 
> description:
> 
> The maximum value of this field is limited by
> the transport used. The agent needs to specify
> this field such that the entire command can be
> accommodated within the transport chosen.
> 

Yes I am aware of that.

> Furthermore, I observed the absence of a skip_configs parameter.
> 
>  From my understanding, this implies that the maximum number of 
> configurations should not exceed the msg_max_size allowed by the 
> protocol, enabling the transmission of only one message to the SCMI 
> server at a time.
>

Yes that is correct, my understanding is that the transmitter is in
charge of building a message whose payload can fit into the maximum
message size allowed by the underlying configured transport.

> Given this constraint, it seems we might not require additional helper 
> functions. We could potentially just verify against msg_max_size.
> 

Indeed for that reason the scmi_get_max_msg_size that you introduced is
just enough since it allows you to peek into the transport and get the
max_msg_size...the misunderstanding is around the fact that I was simply
meaning that you should plug it into some new helper_ops so that yo can
call it like:

  max_msg = ph->hops->get_max_msg_size(ph);

(like iterators or get_extended_name)

Because in this way you could use it also when the protocol is build as
a loadable module, thing that now it is possible only for vendor defined
protocols, but we could also easily switch all the base protocols to be
selectable via Kconfig and =m in the future (if ever)

Your helper is fine by itself it is just that it cannot be called by a
protocol defined to loaded as a module because the symbol is not
exported and, indeed, we introduced the ph->hops thing just for this
reason, i.e. to have a set of common protocol utilities that can be
called even from loadable modules protocols without the need to export
every single symbol.

The reference to iterators and extended_name was misleading
probably...my bad...or I am still missing something :D

Thanks,
Cristian

