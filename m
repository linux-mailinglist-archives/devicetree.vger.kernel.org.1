Return-Path: <devicetree+bounces-12977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4C67DC0EE
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:05:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2410B20CF9
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 20:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B18E1A72B;
	Mon, 30 Oct 2023 20:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54CE1A727
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 20:05:29 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84910F9;
	Mon, 30 Oct 2023 13:05:28 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-da0344eb3fdso4333952276.3;
        Mon, 30 Oct 2023 13:05:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698696328; x=1699301128;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JYDTSpQ9dmrM4NDguVsakYFrSE8CmlM1q10cI6GCnmM=;
        b=qIzDmm9nQlgseR6ztO40Rmx0HBMyu8KVtwrSXcT8+9Te66hyISH9d3mOfxKTKdPS3v
         U7lssopf2ECaHjHt9j5lCFVZxdZHAB0pkpxpnvgIqKGPNaASzkl6112vVWTvZHIR0O0h
         GYgFMj+LZsvb2j+4ubOXEmfCBR5amTQTw7awUyxA3j8y58o3z/59fLtJu4PmkxTxCE8N
         EYog/S2qBLizO6mwfIZsvrVa7VKzcNRnPOcYQK/xCVLAkPQ4mYm1EkHEZPhbDLgBzV2y
         nk02JshG8LJbhifIwOYO+tmd/3daAxh5LCb9C4cYkmnGmojCXH9iyAAoYCE8SN2y7RD7
         ieJA==
X-Gm-Message-State: AOJu0YwJ/boANH3LZ06qsQmBHUnxqsCwdVQEbh/eabwDOUPFrQZAvxIG
	XsZ5OqDvaJNRidJMnIC/JSXy+7QSYQ==
X-Google-Smtp-Source: AGHT+IGjrF29BTZX6gEMKbXB6pavKOzr1+W9zU6BVSKxwpR+Km79lLw4rl7fA5/sEC3OAdiFoAY8CA==
X-Received: by 2002:a25:4192:0:b0:d9a:634e:5ad3 with SMTP id o140-20020a254192000000b00d9a634e5ad3mr9826411yba.13.1698696327588;
        Mon, 30 Oct 2023 13:05:27 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id d188-20020a254fc5000000b00d7b957d8ed9sm90632ybb.17.2023.10.30.13.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 13:05:26 -0700 (PDT)
Received: (nullmailer pid 2233224 invoked by uid 1000);
	Mon, 30 Oct 2023 20:05:24 -0000
Date: Mon, 30 Oct 2023 15:05:24 -0500
From: Rob Herring <robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH] media: dt-bindings: ti,ds90ub960: Add missing type for
 "i2c-alias"
Message-ID: <169869631496.2231680.1229323026772786534.robh@kernel.org>
References: <20231020170225.3632933-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020170225.3632933-1-robh@kernel.org>


On Fri, 20 Oct 2023 12:02:24 -0500, Rob Herring wrote:
> Every DT property needs a type defined, but "i2c-alias" is missing any
> type definition. It's a "uint32", so add a type reference.
> 
> Fixes: 313e8b32c616 ("media: dt-bindings: media: add TI DS90UB960 FPD-Link III Deserializer")
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


