Return-Path: <devicetree+bounces-169042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C954DA95564
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 751D1188FB5D
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 17:40:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D791E833F;
	Mon, 21 Apr 2025 17:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="grzTbOcV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8820D1E5B62
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 17:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745257220; cv=none; b=VMHhpgBOTY8nHDMREJQR0n2jCwVm+EgoE0+RMPtEMRpU8Bxa36hlPSZcbhv85HCdXS7wEz2QEhScfuWa0RIOqMdlcWzW6tUhUBCs28psWlef9XWuq3F/Y+fTe1ASNIIihr91P4kIhENMtVe1TSvjkq099KBIa/lDrThBaqUv29g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745257220; c=relaxed/simple;
	bh=66L2iY9H9WYl2CXA3EnQx1lmEezQGIEG61bPGBz+f9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NVDspzMb2B/kx0TKeThWxLJg+dfW7Oq45xQQVBbt12NUPMEXOf0ZqQqjWBCvpQhDk71ShUPQDMeKQqpqaUoNVc9Deey/c7G9IkROc7Qly3vnoyyx5PLmVkh6DhUQJPWoZuQzasw5pL8udOS2822z3TMqtFCGE62wMia5XoVGdn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=grzTbOcV; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e8fc176825so35471496d6.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745257216; x=1745862016; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aKl9K7y0OZr7wC01nlMRwEWzh4W8ODSSw6dPpbMz4Bw=;
        b=grzTbOcVPSt+k4KPzGJzpU1f2Plae2v39zSx8n+wfNtrzMewOMbehuVhHkoPFJSPCq
         D5JM2RPHFzb4wYUQpbpfTj9QyV6b8Jp/Ypm8W52DEs9CtVsTCOUHX7Bdd/scFkkposgL
         L6TG18Q8SPPqOaiId2lttpnJbLdXGqoCPRcTL3Sd1OHwn3OwLoxXQXMbvzkqKsRxtAfQ
         WdOgZgqtcoeRCvUDulCPC7MFVqQ03Hk1LypCPzehPr3V4lERTtWP6Pklr9SD5z98tp9n
         l8W5ooC6NHMYJiRuuL9YFByE412xyb2Zhkk83TizjFxOlWT3mMvNmaGlxfOkFV2uMs6H
         zacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745257216; x=1745862016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aKl9K7y0OZr7wC01nlMRwEWzh4W8ODSSw6dPpbMz4Bw=;
        b=H3mxnRGiFpellyh2pEa1B3dDcfZ3TNoG+JSnjFgc0fM5ut7nzHmk1P0/o43ki4Knsd
         r5LvfdwKBsGthfbEATEuleNzCgjB357UznG4qD5XJtUTGg855C015JF2IZSSW63FOl75
         bIh0jh4ykSAdNB5YCzJPjO8xGj2j2RZfft9ZQj3kbzuI3lbjCk56XQ0KSNar69hOBws0
         2N4Blei8EWSEtqg2rUqCb/O3XcKu0XsgEwAa0SRwQZhdrqvargTDRLoCK+w2jiFAVgcp
         SeHGV+H03UPxkm5YXa9zO72P5dgSlgAtGdILFGdnbMg1Vtrk+2ak0+Sn7t/BiR80+sM/
         2Cbg==
X-Forwarded-Encrypted: i=1; AJvYcCVUP3Ga4nYKi6LzgKYh9bI0XbNL2TBKzvbJugkZvNWZwZWKuEG6XNj/kvWh9xupXIJMxTCN68IQwBhK@vger.kernel.org
X-Gm-Message-State: AOJu0YxrPrvDeu6bo/HOAc7ITt30roVB/1Fgxasb/50hpJ5MA7PTLtiZ
	ZMSNkMVswYIqJB2wVAcEMmOZ1qMgm3D0/Wm9SNaf+xTg3bFNiwkDaFPlUcyJsPo=
X-Gm-Gg: ASbGnctcyppLlNZWjO/9k6Tcv9hEzK3KzcDLeculdW3OyphOOjVwXdxeNtUKMutZcDo
	QRJ1Y/5peHNFgH8MHYX0U8At15A6Gy4WjAPeTbjyJ5XkTGaQiu1i3QFD0vZIOsaRCUyHIC+w4x4
	BIGhIYysFKP32uP4Ax5nUyacuNon1vCbGTX8NVI7C6ZaT4xo+4DCpa2SM9qJotB29gK0oX5dMrZ
	wZYbePY2QPXmAALX+yxXMfCm3Supf0jAI4ZNdk00ftBHdU1tgBXmxm9/11TbXItF+yAQ21Niv/6
	xXFJ9ejKTQfZ9V0qoUmlzc6ad4V+7TtfLBzzetZ+pTgoR6LQ6vRrb2wCjHjIkZWMqzZf/4dObGz
	ceLyj
X-Google-Smtp-Source: AGHT+IFKSFfC6wpoUNvWav/Eqan/OSxBfbY3a7qMaAdUxlTtjGB0fwBAnW5re7pY3Pjp5k2BOvypNA==
X-Received: by 2002:a05:6214:500c:b0:6e8:9b52:7a1d with SMTP id 6a1803df08f44-6f2c450edd4mr263991346d6.8.1745257216244;
        Mon, 21 Apr 2025 10:40:16 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2af120esm46284596d6.1.2025.04.21.10.40.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Apr 2025 10:40:15 -0700 (PDT)
Message-ID: <81788fbe-1344-49c4-9619-ea95956ddf15@riscstar.com>
Date: Mon, 21 Apr 2025 12:40:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] riscv: dts: spacemit: Acquire clocks for pinctrl
To: Yixun Lan <dlan@gentoo.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Haylen Chu <heylenay@4d2.org>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250419-05-dts-clock-v1-0-1cce5d59aba2@gentoo.org>
 <20250419-05-dts-clock-v1-1-1cce5d59aba2@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250419-05-dts-clock-v1-1-1cce5d59aba2@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/18/25 10:32 PM, Yixun Lan wrote:
> Pinctrl of K1 SoC need two clocks, so explicitly acquire them.
> 
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> ---
>   arch/riscv/boot/dts/spacemit/k1.dtsi | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
> index 584f0dbc60f5b0d078c7127cc4021ad6022cb182..153fd1160182b42fe1a2f7f042c9c1da90f63b0c 100644
> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> @@ -450,6 +450,9 @@ uart9: serial@d4017800 {
>   		pinctrl: pinctrl@d401e000 {
>   			compatible = "spacemit,k1-pinctrl";
>   			reg = <0x0 0xd401e000 0x0 0x400>;
> +			clocks = <&syscon_apbc CLK_AIB>,
> +				 <&syscon_apbc CLK_AIB_BUS>;
> +			clock-names = "func", "bus";
>   		};
>   
>   		syscon_mpmu: system-controller@d4050000 {
> 

This looks good.

Reviewed-by: Alex Elder <elder@riscstar.com>

