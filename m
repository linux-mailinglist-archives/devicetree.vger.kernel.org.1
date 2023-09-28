Return-Path: <devicetree+bounces-4253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DBA7B1BD7
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:14:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 54280281FE9
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DD338BB3;
	Thu, 28 Sep 2023 12:14:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F15881A5A7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 12:14:00 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E22139;
	Thu, 28 Sep 2023 05:13:59 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: festevam@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1ED668655F;
	Thu, 28 Sep 2023 14:13:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1695903237;
	bh=xq8doLoT4KUV4tpCq9GmdRCLI8o0/z2+naUeWYHJcsk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=N1vut9K/eHQMNJ7v73vTF0KJgu3gHXhHKjEM6swVCzSgR+Z5kc01okvHPsb7/bW6w
	 n1M1PZ0jATRFYRsrR4h71TguvsEJWyBlI0ZyaJRI7NUiBE7MVR4UhBTZiMOGhISgUw
	 Y1xx3oaXASYbZYNNtJVLRJkWjKBMDrxOrMOv4Yr3/W/U+NTMnZ922Jqd8dSz+w3eGW
	 fkM5PWpA+hMWxppoK6xNB6HPYgZcLgl9nGcM3SbD5QlSTPK0ppBOPGXspWzcaTQ87G
	 pfBTx9b/1dwD7XZ1foHFCqZmoNWyY5ZmRhkjcVZY9SsCUkTbp8INFZOOvx8a4DeP5k
	 oVe7LdnGyBV/w==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Date: Thu, 28 Sep 2023 09:13:57 -0300
From: Fabio Estevam <festevam@denx.de>
To: Martin Kepplinger <martink@posteo.de>
Cc: Fabio Estevam <festevam@gmail.com>, mchehab@kernel.org,
 sakari.ailus@linux.intel.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: hynix,hi846: Document orientation and
 rotation
In-Reply-To: <38925de00ef14354a17e2437284e08d0524e6a23.camel@posteo.de>
References: <20230927181600.272904-1-festevam@gmail.com>
 <38925de00ef14354a17e2437284e08d0524e6a23.camel@posteo.de>
Message-ID: <970e9b41f1ee76c509dec032fa277eb0@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Martin,

On 28/09/2023 06:20, Martin Kepplinger wrote:
     unevaluatedProperties: false
> 
> hi Fabio,
> 
> thanks a lot, I like to have this fixed. I always thought we could re-
> use media/video-interface-devices.yaml for these properties somehow...
> 
> if your change is preferred,
> 
> Acked-by: Martin Kepplinger <martink@posteo.de>


Good point on video-interface-devices.yaml.

Indeed, we should pass a reference to it.

Otherwise, after this patch, hynix,hi846.yaml will only check for the 
presence of
orientation/rotation properties and not check whether the values are 
valid.

I will submit a v2 that adds the aditional ref to 
video-interface-devices.yaml

Thanks!

