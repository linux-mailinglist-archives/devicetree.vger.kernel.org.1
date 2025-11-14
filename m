Return-Path: <devicetree+bounces-238486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D965DC5BADA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:08:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 13FDF354597
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 07:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB33A2E7624;
	Fri, 14 Nov 2025 07:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="F47a0S5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A3D2D248D
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 07:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763104099; cv=none; b=UGKl2pBtMPCWFl0olBSvTnUED6hgWPX4nnvql3jm5N6vBCvDsIQOmo9Q3VrSAVYM1pU6VNcxcD9RFHGAybjg5WKnkSb0iRyu19ieYfVm+Rjly2afKTQZGxDJ/aWj9P7yvPhim4M4G1nbifANI8FnAeKZtKjtaAvtwJ1/QAjQP0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763104099; c=relaxed/simple;
	bh=gRfgO6qz0M6c6jz9+gfX5Kpkygfd3gv/zQPSf6MTBNc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YNM/DrXrr6Y0Desnl7IhEdko/YGur+bSnu5QOF6t7nlW0M8XTFJHVVqklegqrZqM6WOgO3/4KllGhkw4tyT2WcSlqDKrzbCBwxUbzmXNtw03N33I+YbU3IqG82yfPnSa7qe9vCZM2c6NT9KpUK0hxnb4d4Gu1axga4x3Xyji/dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=F47a0S5f; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b9a5b5b47bfso985149a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 23:08:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763104098; x=1763708898; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qf7oM2oFrPrqeIGW9RDJgG5aPYxrWcvRZEha2f7Gb2E=;
        b=F47a0S5fi/GhtD9w0eQi0wfLKYHb9+RigdK6BT6za75w4/pPbgDLRzB+exmpjFgk5/
         S9ny0SDKm2tigmbrDJgWOIvLecgsDchUHQWWzu1uZBWwVN6g3Vs71Noq7W/yD0NRGgZZ
         7skOqbdqdZmFaQommnzPZhWzXOHW+h5/7mEg/fVdlMfC+NxxPAcifKWk7oZadOxj2hDr
         MsZ2gx6pGDcv1YJMMDnqLLFUIMtw8DM5uTCzF/UP2cfeZZBzaU3t73S070S8SQBxxdqi
         nhrV8e6bHe9UJ/2W4E9A67zqd1VNeW+ylCjg1uivRp0O+oy1jwqrxTqjVx/dvGwBuMow
         CBTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763104098; x=1763708898;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qf7oM2oFrPrqeIGW9RDJgG5aPYxrWcvRZEha2f7Gb2E=;
        b=t1UA8DKnTVMvAVTR8fejQcLD00H1uGmjwnBJ8gG75QFhuLXn6K2zJG0TcU0Tl/8m2P
         zxp+2EZDIgdkfpm1ivl/N/7rdjY4Em3Q3sC7iSnn7PGuw/zNFtPHuX7qAm2uZqLeX07v
         daTQz0cgFhPex5IDscOUKRds/b2XMiniKyKmtfRWAR0EmMqos9Z7IN3j/ew4UBPIxYdF
         S4njGxO2fsODq3VrmlQNNC/H2o26lH/Kikp3q7kl4DdhlGSOdhtm1XpU3X6FGRDPFAlm
         Kjf9zg3weL02gC9eksez8pAyL+X9rE4K6r1LuACJosYmRPgYolM6UxlvrBUiTfwFTZdr
         XRcw==
X-Forwarded-Encrypted: i=1; AJvYcCWh9uhUU0s2alePdXFFyyQdcG69wSenDkOP40lDb0tInEhsIJhIJH8+5CXXIxdUQnI1wGhaeA55iQml@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+0K7etQplTwUX5T6mOdYQX/4i/ZyxyI5aY8Le4Z4RhexkaDko
	5fePuBDUNQ5WyNLps3sdDTKKzEqDlnNQZSMmwdWVHyVeO2R1zzwRR29b9Lq6/0rb6Zi0xATpaku
	+LvGIvnJMmTj60hUkAZV+vxx1HF5F74I=
X-Gm-Gg: ASbGncuUQytvKZkgRq3szNm7xDhp2+lRfAVtUSN3ebZhgeicrXOqhffb5Wufy9mQh5i
	G+CqIumUAn7vUrBviecHDavvxHfsNBrOBEbk5PJLzHL34IxcGisrwM95dC2qbcAsvqWiyHU3eI+
	0dRyygB6F3tuQMydAVQbpP4tsGiJgIoBKzap9OmvHeR4xFAE+nhIoP2r2JgWcYigVHimWk5Ux90
	MOORDp07mFxUvhzDqzP0mVxPYVWGwUhAZaea8YCtgVoSI7JQ5YVPRBj8Q==
X-Google-Smtp-Source: AGHT+IGsymkdPfMwkbwCyj1YqTZ8hznop11+TfoGs9/58g0chCF5CQB3ik/rPsfU2yzT2kReqKKIsszp14r6geGb8DM=
X-Received: by 2002:a05:7022:43a6:b0:11b:1cae:a0fa with SMTP id
 a92af1059eb24-11b40b29828mr900544c88.0.1763104097709; Thu, 13 Nov 2025
 23:08:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114-imx91_frdm-v1-0-e5763bdf9336@nxp.com> <20251114-imx91_frdm-v1-2-e5763bdf9336@nxp.com>
In-Reply-To: <20251114-imx91_frdm-v1-2-e5763bdf9336@nxp.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Fri, 14 Nov 2025 09:10:40 +0200
X-Gm-Features: AWmQ_bk03ec5WXYu6zBfKnpCmf74S7CEbVFh4TSdNIITolMj2aLH-CXkG7tZ5Lc
Message-ID: <CAEnQRZB5O+UTZ+nW21KuhBmvS2zQ7wbYS00xHhK-dshAOi5djw@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: arm: imx Add FRDM-IMX91 board
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Justin Jiang <justin.jiang@nxp.com>
Content-Type: text/plain; charset="UTF-8"

Hi Joseph,

Thanks for your patch.

<snip>

>                - fsl,imx91-11x11-evk       # i.MX91 11x11 EVK Board
> +              - fsl,frdm-imx91            # FRDM i.MX91 Development Board
>            - const: fsl,imx91

Community pattern of creating compatibles is fsl,imx91-frdm.

Even we have some internal expectations we need to adhere to community
practices.

Daniel.

