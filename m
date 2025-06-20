Return-Path: <devicetree+bounces-187825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 134C6AE168B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 10:44:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 907643A633B
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 08:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A6726C3A8;
	Fri, 20 Jun 2025 08:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="OzsPiecT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1130926B75F
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 08:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750408817; cv=none; b=hMTTa2klaUDkug6ug5yv50Pl08L6kxNYUI8JiDbSvTIBJJZ6hME+FX/bibtX0sInq2sp0r+CCH0RT7zREZdCCPHxba8DdxyKEjh6EwR9UmZgh/K6FSMMBB6WfGhLGPwRnP62bGflTbGZrlprlzOFIkNAVdZ2vlz63Ad8qwpdaUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750408817; c=relaxed/simple;
	bh=a3mQToStIF6B1IdwttoHX1nYEJ1tyZcwTnGtOMKW35Q=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=CXo/oJ5xOu8faS+/DR8na8mycCcXLcrQkjUiB+FkDvcPQQ/+MI6BqP4x2Sysg0Zj1k/p87yyj/v2blP2/UfuAGxEo5C4FmcX81ogHNi1cI572m0keP4FoF6YW65RQeX0jmv7qcnStr551pVkUVKaWslA1uQ9/ybsJsXbNTw6wBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=OzsPiecT; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-606ddbda275so3100068a12.1
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 01:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750408813; x=1751013613; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xb6LSPnM0jp92EEKrNM76UM1fccTcugFDTVrUIjKDq8=;
        b=OzsPiecTJAWEDjY3lZVKGcTxZo1IjiJb6A2krnBK+QO63UFoy2xb0TJC7c+x27xhqC
         K8WPcXa8R5ILdCCXOBByLgtcytWRNtmsOZ9/JG/zthzGETQq/2fYFtvwclG094H+UI+0
         nIz53UkqIJZt+ICtDSDObVG9OvQ9ORUvlDGym3Rx80kk+BY9BrFKR3rrtR/BriuTB9/k
         M/9Nc9ti9da3+kBYbgfP9Wv4qci+5XbGRDaxp6aALp25RvhqKygC2Ard7nq2Fz63Xxum
         zc4keaPBkwSVzswBkmkNS+1zSyoieN9aWB+bkf3FQ4vcVozl3HdC9lkHMHw+qMQ/jObH
         8r3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750408813; x=1751013613;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Xb6LSPnM0jp92EEKrNM76UM1fccTcugFDTVrUIjKDq8=;
        b=Gh8PSSMuMBMu6tEW+14lnSvWuJkPtTt5aXx3xoCFMU3YhMLWLkNZCZLux4jsK+fRw+
         kZgWNqPoV0s4BvBJPnCWC2AZkHTubF55ttAjpP3USbUEoFMicT4gqgcC6M55HYD6AC1P
         23XUH/kK/c3TfHY0QdI+U515Q87ZgSMOoFs7cZzHm/KBNeogeY9Rxjcy3oBNYAaJUEKO
         HxVOZcMFeKtVCFVirfKNo3PirB7SZxE58AUoYIwWdju8BXQMeluQXPBlh3uOTKa5BlT+
         s9aA4S/QLLL+XP/exPfYYg+udUSRFCTPAdXmUM87MlChRtjEWy0gxbSt2oAxSeEBQKVD
         1VNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjYPVtQbiGBJ9AefsybE4obtRa2m+e9kEjIZCv/bNK1GqE3tuiGWE7Rfij2qIUI/lPghZyL2hJ149R@vger.kernel.org
X-Gm-Message-State: AOJu0YzsHIMOf2EDOyLST3BLc7oA+cZ1BT1VCWvPU1ED2usQy6fSoz3Z
	MHRQ/rlMjo2g4ZBJ5GVB7J+xfTSdyomXnqz5YHLEXckwky/xL25Ax5Pg2kQe/DdXywY=
X-Gm-Gg: ASbGncvaH1xU4uKtnVmBWOFanGl6RvY908eKFR9vPa3Vkmwx3vziNBDAs9OjKA+xBhC
	fVCiI3vO3QYpNYTiIyKnnko8+7uH2wIimgyTBk2Jn4oS3U3KVwvy087HSgN29NhRyYdf40peCEb
	jzw+98c468urLF2vY20qB2QySbVFedm/n7lo1urOW63wLCwozXDJ+BhjGMZWCUJvRyvcqSaDeZE
	sUgqsWmOpfp2lCKkFK9j53/GgwuNSW/+GtGUofFGILBv8yCnpEWVDnUcvXputDkWwk++ZC7gM2U
	siG1BGQx+0/MiiBFlccdREyY5kR5MF+cV3P7Uls2jWYaysPIYy8SiYsR7rZARFZ4tulcASt5cxo
	Vl+r5P3R89vYVvo0btwnv9S1L3Jb6+wo=
X-Google-Smtp-Source: AGHT+IHSanY7BYLP4aWQy8kFVBDTWraG5UXAI4rv0kvSKzHjiyN5FBJKlVrNJSNccFlJIgG0wJH/Gg==
X-Received: by 2002:a05:6402:35d3:b0:606:bd9d:a772 with SMTP id 4fb4d7f45d1cf-60a1d18ee41mr1852590a12.24.1750408813427;
        Fri, 20 Jun 2025 01:40:13 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60a1854362csm1084336a12.20.2025.06.20.01.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 01:40:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 20 Jun 2025 10:40:12 +0200
Message-Id: <DAR84ZHFZOJI.3CRLDTISWFUEQ@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-pm@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, "Sebastian
 Reichel" <sebastian.reichel@collabora.com>,
 <linux-hardening@vger.kernel.org>
Subject: Re: [PATCH 10/11] MAINTAINERS: add myself as smbx charger driver
 maintainer
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Casey Connolly" <casey.connolly@linaro.org>, "Sebastian Reichel"
 <sre@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Bjorn
 Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>, "Kees Cook" <kees@kernel.org>, "Gustavo A. R.
 Silva" <gustavoars@kernel.org>
X-Mailer: aerc 0.20.1-0-g2ecb8770224a-dirty
References: <20250619-smb2-smb5-support-v1-0-ac5dec51b6e1@linaro.org>
 <20250619-smb2-smb5-support-v1-10-ac5dec51b6e1@linaro.org>
In-Reply-To: <20250619-smb2-smb5-support-v1-10-ac5dec51b6e1@linaro.org>

Hi Casey,

On Thu Jun 19, 2025 at 4:55 PM CEST, Casey Connolly wrote:
> Missed when this originally went upstream, add myself to the MAINTAINERS
> file for this driver.
>
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> ---
>  MAINTAINERS | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index c2b570ed5f2f28341a3bcb7b699cbb250ffa2a88..a32e53d89c29cacf6e456258c=
4c7c0206cf8abf2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20565,8 +20565,15 @@ L:	linux-arm-msm@vger.kernel.org
>  S:	Maintained
>  F:	Documentation/devicetree/bindings/mtd/qcom,nandc.yaml
>  F:	drivers/mtd/nand/raw/qcom_nandc.c
> =20
> +QUALCOMM SMB2 CHARGER DRIVER

SMB2/SMB5 or SMBX probably?

Regards
Luca

> +M:	Casey Connolly <casey.connolly@linaro.org>
> +L:	linux-arm-msm@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/power/supply/qcom,pmi8998-charger.y=
aml
> +F:	drivers/power/supply/qcom_smbx_charger.c
> +
>  QUALCOMM QSEECOM DRIVER
>  M:	Maximilian Luz <luzmaximilian@gmail.com>
>  L:	linux-arm-msm@vger.kernel.org
>  S:	Maintained


