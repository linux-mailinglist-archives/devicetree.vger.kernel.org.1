Return-Path: <devicetree+bounces-221070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 05247B9D0D6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 391461BC376D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:47:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D992DE71D;
	Thu, 25 Sep 2025 01:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kSzah0SW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEFAA188A3A
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:46:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758764806; cv=none; b=X8UJWyR8zk6SnBRUwGRHHCzqBEbJditHjE71mbo6rHeONLMs8bE3mXRM/xxJnFUAk4ySm/vkqW9TQ/O0cCFvw11UgxLiJdXZsglj/RjTrXYfmSv966IuLBFN4SLNTc8Hu/PLBrqdEedL74uPboDC7p2T3qqPgvxV38sMn3ndkF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758764806; c=relaxed/simple;
	bh=qIjm0b0AslPdWaTIs2WPD6UpwsjtkfrF/JhmN6MqGNM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cIFIDV6uToxnmYbGY6eQ4wy5LHKeDMtTDUEb7n8SMqyPWd/ASaqhEiAmVB2sdlW5A0Am7/94sD9Tn6XbOwSRzrKuzkbDoy6iH/5BvNq711JKPtqP3OKhPMYF1Q27Mf9BeyOR+4xVQ9A4qEJ4ZZFMU+eXY7W2iK9D7moq1eV/lWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kSzah0SW; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b5565f0488bso320221a12.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758764804; x=1759369604; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=85fJuIkIL0zFa5NAmKr1mvE2dYhK1JVFush8sn/+tyk=;
        b=kSzah0SWohiOvVb8aVH4abFglRNkagkum6PYJCgN3rniiNUih5RybhLiEg93MCNcIw
         YVyrm/OhZWv/SjTLuZblurmt8iJpSOo3tCSnQyOvGnoERwg1st02vfqt8UhkfaAnAHwj
         iXpFGOned0mJCcmwWG4Baoo6dnEknaqIgxpSBaNaqOkNYA4EqrzY/W5rwTjqyZmPooMG
         /t4S1uvoHD7a3d72eQ9SZ05FQRrPInFXwS03GBRH63NeWxDgiWftQtscu+myUAayHm5A
         AE5eJ8DFC31wtWGEv74XBH4JhDTRQhWrCrWpwIer5jDHgsyhSOzLC97angKnvurgRoIN
         ErXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758764804; x=1759369604;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=85fJuIkIL0zFa5NAmKr1mvE2dYhK1JVFush8sn/+tyk=;
        b=JMCybR3lkS+y5ZDJ3zojB57BFpOkac+zvcixWrbjnvcCJWh3f2h8X+83DC1WvdMbhD
         pAXeV3CMuqe73OTMo0SPMJPpnLdan65PeabRUaEGVlGEA2M3j57zrfPF9VVU922br6N4
         ldSK+iwtasMBiAm1b1lBYwfG3DTygFGY2KifU3OCES+kyX4UvGEM6/iPsGfyWsYFQkTF
         u5SLLuWWQmeN/RTMCixgFXbJ0GxTqpQvh3S6IvWG5BCVis0Inu/D4R1zNcAI5pY6FmAa
         pAVU/dskzDwJfKud6G05HLHsut9SBMCmkMwU0I9DaQsrr3ZILZoEEnGFvTRw2hutFtbq
         e3RA==
X-Forwarded-Encrypted: i=1; AJvYcCWQ64JQelbmrDvultufa6U/dec0yUqeuNNAuppfy0FDT8W4zb9uif6i6Qaf2xvfrOBA2twzFg8vHkJt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0gzGmF8J6NVaXlZnLRozrRU6XEHS3oAibqKOJJEZpx0wh76+V
	IVxJTgVm2+Uk+h4Dtsfto4p3CSPeHAZt07JW/m1sgg7gOjQDPZPFSLbZlVgys28fT/+tTDJmEm2
	TqGxnsmhV9z/ipZB8eSELJ0Usiu1o5MA=
X-Gm-Gg: ASbGncvyrVwBcR5PzdMkY12q9IiHkKGUO8GDtNWP4tO6VOhuNsFOsoHEA27YFIzNQJl
	2+lgB8UE8U/qA1PVIZAE0XTm0eMAvzlEpOTJ3NeiLayVwg76WfBMl1rLlo3/OskEmcfwkR35IsB
	81IstDjfWccChFU83wl789KQLS/ii6hSd/lyn9HnNHY3eHaZ7f2IvLrhzB0UO6RNAQxZ2UXEbzi
	6A2Yki2pRNEH3ezkZZ8B7MfKDvhcATO9B3I
X-Google-Smtp-Source: AGHT+IH4AchlDsowYYE+w4wzPJn03yQRQb4BMfQMSzOsS136u1OryTmFlDQB0qJjJ3owJ2eL4O9lMggxOrUiKuT9Azo=
X-Received: by 2002:a17:903:264b:b0:269:8059:83ab with SMTP id
 d9443c01a7336-27ed4ab545emr10812965ad.51.1758764803975; Wed, 24 Sep 2025
 18:46:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com> <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-2-48bf9fbcc546@oss.qualcomm.com>
From: =?UTF-8?Q?Krzysztof_Koz=C5=82owski?= <k.kozlowski.k@gmail.com>
Date: Thu, 25 Sep 2025 10:46:32 +0900
X-Gm-Features: AS18NWB9OdekwkAK17ia2naP3ZlyoDmiLGmgYBkC9bH8Iatmiq7IbsVkxyDb_Qc
Message-ID: <CAJKOXPfVhixCk0_Xh=9XokjHObM=P+SP=itaXHv7xTr69pc3_Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: phy: qcom,m31-eusb2-phy: Document M31
 eUSB2 PHY for Kaanapali
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, aiqun.yu@oss.qualcomm.com, 
	tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com, 
	yijie.yang@oss.qualcomm.com, 
	Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 08:35, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:

>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> index c84c62d0e8cb..ab1cdedac05c 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml
> @@ -15,7 +15,11 @@ description:
>
>  properties:
>    compatible:
> -    items:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,kaanapali-m31-eusb2-phy
> +          - const: qcom,sm8750-m31-eusb2-phy

This time maybe without HTML:

There's no such code AFAIK, because original work was never resent and
never merged

You create some convoluted big dependency chain and I suggest first to
finish upstreaming previous project, because otherwise it's difficult
to review and impossible to apply.

