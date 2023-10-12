Return-Path: <devicetree+bounces-8157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 672447C6E7A
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 14:51:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2061B282782
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 12:51:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ADAA250FE;
	Thu, 12 Oct 2023 12:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="InpFHdPn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1C722EFA
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 12:51:24 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 853E1BA;
	Thu, 12 Oct 2023 05:51:20 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 3FBE786E47;
	Thu, 12 Oct 2023 14:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1697115075;
	bh=Z0GVvRTU4DqGmzGQ3SLCsI4y7zhSR2KUN62lpuh4DCQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=InpFHdPnC/bSccQpoGQsku8QCThoCrpJqqkoIOE51AjkW89aEeAuXbVXuDwyGL7EG
	 XYjfDORNdQJ1ePFaFAmeYXPZ3s8j9k69UaOOt59GdMJBset4fTPyqEo+Kwp3waJED1
	 8Ue2nr1B2Wlb+2DZnEx8QfO342+e1KtHRHztbRmTX47+VHBzGuHRsBhOmIhMdLNcbB
	 YjzmA+a8oPzxNZnwiXNeJygLqmVUzpOx8Ns4o6BYZmtzzoolsPJTbv6nF97JENlgMF
	 yDmyAhNwKH5KISBNCU4Z71qDy2srll5hkUloz4W7fFARl0ReCAFcjbYfPBoARGmewi
	 FzqHjOfCZKOlA==
Message-ID: <d8eefb50-dc68-4df2-9f7b-b2a90c6d89f1@denx.de>
Date: Thu, 12 Oct 2023 14:51:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: at24: add ST M24C32-D Additional Write
 lockable page
To: Rob Herring <robh@kernel.org>
Cc: linux-i2c@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org
References: <20231010190926.57674-1-marex@denx.de>
 <20231012115719.GA291445-robh@kernel.org>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231012115719.GA291445-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/12/23 13:57, Rob Herring wrote:
> On Tue, Oct 10, 2023 at 09:09:25PM +0200, Marek Vasut wrote:
>> The ST M24C32-D behaves as a regular M24C32, except for the -D variant
>> which uses up another I2C address for Additional Write lockable page.
>> This page is 32 Bytes long and can contain additional data. Document
>> compatible string for it, so users can describe that page in DT. Note
>> that users still have to describe the main M24C32 area separately as
>> that is on separate I2C address from this page.
> 
> So 2 nodes for 1 device? Wouldn't it make more sense for the 1 node to
> have 2 addresses?

It would, if the 32 Byte Additional Write lockable page was somehow 
related to the main area, but it doesn't seem to be, except that they 
are both on single chip.

