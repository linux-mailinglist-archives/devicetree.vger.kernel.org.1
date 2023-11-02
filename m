Return-Path: <devicetree+bounces-13544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A87237DED40
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 08:29:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99B431C2091B
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 07:29:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4161D5CB5;
	Thu,  2 Nov 2023 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AA533C5
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 07:29:50 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0FB7212F;
	Thu,  2 Nov 2023 00:29:49 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E99B52F4;
	Thu,  2 Nov 2023 00:30:30 -0700 (PDT)
Received: from pluto (unknown [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 308B53F64C;
	Thu,  2 Nov 2023 00:29:47 -0700 (PDT)
Date: Thu, 2 Nov 2023 07:29:44 +0000
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
Message-ID: <ZUNP6BeUd4Ba_rUp@pluto>
References: <cover.1698353854.git.oleksii_moisieiev@epam.com>
 <fdfedf6dd0196afd887049877eae9fce0fe63eb2.1698353854.git.oleksii_moisieiev@epam.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fdfedf6dd0196afd887049877eae9fce0fe63eb2.1698353854.git.oleksii_moisieiev@epam.com>

On Fri, Oct 27, 2023 at 06:28:09AM +0000, Oleksii Moisieiev wrote:
> Current SCMI implementation supports only receiving arrays from the
> SCMI server and provides helpers to process received data. It uses
> msg_max_size value to determine maximum message size that can be
> transmitted via selected protocol. When sending arrays to SCMI server
> this value should be checked by the Client driver to prevent
> overflowing protocol buffers.
> That's why scmi_get_max_msg_size call was introduced.
> 

Hi Oleksii,

indeed given the new variable sized v3.2 SCMI requests (instead of
responses) this common helper is now needed for the protocols to be
able to properly size and chunk their command requests, BUT this is
a new core helper that has potentially to be available to any future
protocol so it has to be exposed as a common helpers in helpers_ops
(like iterators or extended_name helpers), if NOT this common method
won't be available to protocols when compiled as distinct loadable
modules (vendor-modules can be defined and built as LKM)

Thanks,
Cristian


