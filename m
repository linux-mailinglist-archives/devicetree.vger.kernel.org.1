Return-Path: <devicetree+bounces-22350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3569F8072F5
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 15:47:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65AD71C20E62
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 14:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE8336B0C;
	Wed,  6 Dec 2023 14:47:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SZTWNhWq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48B64D47;
	Wed,  6 Dec 2023 06:47:48 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-286f3e0d010so301484a91.0;
        Wed, 06 Dec 2023 06:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701874068; x=1702478868; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zdeu4uoC14O+b2uj0bUVB7PTJOsjZUdtixypBclfZeo=;
        b=SZTWNhWqUQXeCEZ1kykzNwJMDc193Imz0Lfx0v+Bz68e8tnms69zjgtic2b1aEdJQk
         VHJQIwW/IXusDm+a+GIQl0STWEcchooppgISYAKRblaah7kULMRF99/2boqD5P5qaIFF
         QT+Un19XqvMfosSSsnP0nY+VU8RUpG6RugCrjAS8IbBbm45VN1PxoPGYmOzxDeOldp5B
         eAbza2QfnOFT9mst/z0LvUxPhjQndjBJ2AVT0M5JIWiqZ3Zgb0TJ8KcrfQ7z5vxofhst
         pb2j2sSw3vp6AyZ27Vp3CpuDJhpHanapy9NtTcV11IKPqm5RdUH9/ttMc/WRzBn/Ee+e
         OvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701874068; x=1702478868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zdeu4uoC14O+b2uj0bUVB7PTJOsjZUdtixypBclfZeo=;
        b=SpY5zH9siu7tFrOcjesWMFne+FVihg1o7oKu5bEyJV5/9r+xdjGAc0Uy9ZcZR6iLLT
         TCrVGpihBOiRJgKKkZ1olppqG9Vsaw8h9tH7FW0w2kL64UYR498Vul/ci+vgXepMz97q
         Uq4+sAC6p34cbpg0qOOhPOz3qMkMqNu6YshdazK3s9o1TvDlGaA5T2fy3R+NhJPYn8TD
         XoUQajsKF9FH1K7q2lJElDAoPFnhRBPiXTozdzEaou3t84V2eidh+c4FSv/O8k+MI1rj
         gCp7Rxd83O4/LZLN4NSuThrtI6bKJ7VeziqgsYRd6XNyDQboPnRQFWv2li2qm3USuvrW
         cQcg==
X-Gm-Message-State: AOJu0YzerA9RINB1baclRx+PVgmngj6MWh5334rikfCEq0aJvkg/xg05
	kNXj97VnaYzNKvUlaJXku0ZWclyCCdWGdRkW4q0=
X-Google-Smtp-Source: AGHT+IFr6dudLUCWlILGdXf+tGJJSJHIrMFv5OWD+C7nZn4ItEljHjFM1kKrlbdKSAWG5UwtF5x8egcZnyjkZF2MSCs=
X-Received: by 2002:a17:90b:1648:b0:286:bf9e:a6 with SMTP id
 il8-20020a17090b164800b00286bf9e00a6mr1957830pjb.4.1701874067674; Wed, 06 Dec
 2023 06:47:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231206144201.46911-1-frieder@fris.de> <20231206144201.46911-2-frieder@fris.de>
In-Reply-To: <20231206144201.46911-2-frieder@fris.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 6 Dec 2023 11:47:35 -0300
Message-ID: <CAOMZO5Akp9PsFf2GrSFTKyM1c3kSUEeU=W9ODgiMkyHATRWHOw@mail.gmail.com>
Subject: Re: [PATCH v3 01/14] arm64: dts: imx8mm-kontron: Add support for
 display bridges on BL i.MX8MM
To: Frieder Schrempf <frieder@fris.de>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, NXP Linux Team <linux-imx@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Frieder,

On Wed, Dec 6, 2023 at 11:44=E2=80=AFAM Frieder Schrempf <frieder@fris.de> =
wrote:

> +               a2vdd-supply =3D <&reg_vdd_1v8>;
> +               avdd-supply =3D <&reg_vdd_1v8>;
> +               dvdd-supply =3D <&reg_vdd_1v8>;
> +               pvdd-supply =3D <&reg_vdd_1v8>;
> +               v1p2-supply =3D <&reg_vdd_1v8>;

Supplying 1.8V to v1p2-supply looks strange.

