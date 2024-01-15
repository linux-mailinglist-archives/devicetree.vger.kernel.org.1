Return-Path: <devicetree+bounces-31972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 941B882D630
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 10:40:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BFB01B21207
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 09:40:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB173DDC8;
	Mon, 15 Jan 2024 09:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wO25eBCQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497E8D26B
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 09:40:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-40e8004629bso762015e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 01:40:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705311638; x=1705916438; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DUjf8EcUmZjVmkCxTDXwKlHM+fZcUzkgPqOKaASP32c=;
        b=wO25eBCQEDqcF+ewIp4Mzemnhyr6HY8lXKm70HUUpQAWitOB6+433tKtd/dRPP0iq9
         GxKvQfuaIGQoVOkP6n0aOed4trdZpTTyrWWk49nyne+S9T+V5V8YM9ziihw/CgP9m+nv
         4ddXcWC5ZqZk6tVebIASexYlynve37EcHPMjikVfvrz8Mnx0wSQkZepirLxDiXNB40Cv
         UsgJRQpPr7jmCgu3yJBDSfrdBO1PM2iEtMfrRdD4j567eTOwr4rGtjv6ePxR7zTGCdqR
         e7u2K31C7oDkoVn5CEnlK7gn1nQL74irwlfR3+9QNYkGAdQ2uPPivPjTBJu3lQ8dXsIB
         4/MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705311638; x=1705916438;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DUjf8EcUmZjVmkCxTDXwKlHM+fZcUzkgPqOKaASP32c=;
        b=S3f9XUyO0Um3+0+YZ4ggJGdONJeTjLk/B9qlJvHegTCUiln3j5e+/KVaYkRAn3X9Xf
         vQmqXtCIUOFPC31VEdaEuABlzIXeEMzSo/e5q08jVvLWhX74wyseu/4ElMcj5/jiF6DM
         Y8gEVc7LxjPpqswd8qdjyfcZ/SW1EDnUIAZl6zRNe8uPHksEdUrK3NRSztZmiKbfElUs
         l1pZ9wJPhuXBfCVbol+ZRF+TzWgsuRt3zS9SAkWWk/BcaWwbsu39bysonGloWPVDgmip
         di36MTQYtA172CT/iAGvdUdn/V0mpdrs5vdkToUEF59Wx+xpeGWHmU9Rb7QtKM6wgKQP
         jKbQ==
X-Gm-Message-State: AOJu0YziRMBu7iEIKLowWV0kKxPNrblRSI/OEz1YW+N0om4hw5JIZ3w5
	iDEtiWNxmPbegI0YsTJVEPK54dt9tTjTvQ==
X-Google-Smtp-Source: AGHT+IEJTyA6VGQ1pmR0QXu684SA+wL8v5iXMyFClIBeK7v/xkZcbvvbRveYDGi29Y53uIPAxZpchw==
X-Received: by 2002:a1c:7705:0:b0:40e:78ee:cb61 with SMTP id t5-20020a1c7705000000b0040e78eecb61mr431104wmi.94.1705311638683;
        Mon, 15 Jan 2024 01:40:38 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id w4-20020a05600c474400b0040d5ae2906esm19227470wmo.30.2024.01.15.01.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 01:40:38 -0800 (PST)
Message-ID: <bcd89ef7a43eb7d652f045c029d8e108adf7ba32.camel@linaro.org>
Subject: Re: [PATCH] dt-bindings: ignore paths outside kernel for
 DT_SCHEMA_FILES
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Michal Simek <michal.simek@amd.com>, Rob Herring <robh@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Masahiro Yamada
 <masahiroy@kernel.org>,  Conor Dooley <conor+dt@kernel.org>, Mathieu
 Poirier <mathieu.poirier@linaro.org>,  linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>
Date: Mon, 15 Jan 2024 09:40:37 +0000
In-Reply-To: <827695c3-bb33-4a86-8586-2c7323530398@amd.com>
References: <20231220145537.2163811-1-andre.draszik@linaro.org>
	 <170432630603.2042234.10993333941885772911.robh@kernel.org>
	 <827695c3-bb33-4a86-8586-2c7323530398@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.1-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi,

On Mon, 2024-01-15 at 10:20 +0100, Michal Simek wrote:
> This patch is causing issue for me. Look at log below.
> I am running it directly on the latest linux-next/master.
>=20
> Thanks,
> Michal
>=20
> $ make DT_SCHEMA_FILES=3D"Documentation/devicetree/bindings/arm/arm,cci-4=
00.yaml"=20
> dt_binding_check

It'll work if you drop the 'Documentation/devicetree/bindings' part from th=
e path, as
it is implied since bindings can only be in that directory anyway:

    make DT_SCHEMA_FILES=3D"arm/arm,cci-400.yaml" dt_binding_check
    make DT_SCHEMA_FILES=3D"arm,cci-400.yaml" dt_binding_check

both work.

Cheers,
Andre'


