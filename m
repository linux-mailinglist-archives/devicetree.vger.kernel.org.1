Return-Path: <devicetree+bounces-5986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3252A7B99E4
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id AB599B20997
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4604015B9;
	Thu,  5 Oct 2023 02:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="EmtdEYK8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93DE415B8
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:20:40 +0000 (UTC)
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44F42C1;
	Wed,  4 Oct 2023 19:20:38 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 48D17864C3;
	Thu,  5 Oct 2023 04:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1696472434;
	bh=tsEtEqiIgmM0XR9aZhVSacXQcVQ2j7YFJBDTLrjYKB4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EmtdEYK8bSYL4AZzwqKBFD3J7QeXa3nlgwoP4BOgEwu0z+oXfxy8IZp1PZ65b9tTR
	 M7HOMhyAwtMXXlKuCYPv4nMG9zmGL1XMzxtR0Iu6n40AWkNUw0nSkcT/wmSCdJdv96
	 3VAI76K2s6VFcnTlrgS+drISseTJvcjMUMVJEkm6xcB2JJZINPC9RZ5POy3Utvl9uF
	 zSt5nET/FwhChCfKQbntGE9+9Pke3FBUexs29G5nZggTwV4cHhem0b54VsoMCqg3FQ
	 g0UaOikVqsJAn0fTKAVWA7asoslp0619FYuJWnj3QromvdQqx7dGc97Y2RA8UbD/pB
	 iOoH8IlHYi+wA==
Message-ID: <870e8fc7-8fc4-4773-8546-3b5f5dc827ef@denx.de>
Date: Thu, 5 Oct 2023 04:20:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: dt-bindings: imx7-csi: Make power-domains not
 required for imx8mq
To: Fabio Estevam <festevam@gmail.com>, laurent.pinchart@ideasonboard.com
Cc: rmfrfs@gmail.com, martink@posteo.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20231004201105.2323758-1-festevam@gmail.com>
Content-Language: en-US
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20231004201105.2323758-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 10/4/23 22:11, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> On i.MX8MQ the MIPI CSI block does have an associated power-domain, but
> the CSI bridge does not.
> 
> Remove the power-domains requirement from the i.MX8MQ CSI bridge
> to fix the following schema warning:
> 
> imx8mq-librem5-r4.dtb: csi@30a90000: 'power-domains' is a required property
> from schema $id: http://devicetree.org/schemas/media/nxp,imx7-csi.yaml#
> 
> Fixes: de655386845a ("media: dt-bindings: media: imx7-csi: Document i.MX8M power-domains property")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marek Vasut <marex@denx.de>

Thanks !

