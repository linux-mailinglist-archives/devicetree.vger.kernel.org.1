Return-Path: <devicetree+bounces-226135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A48BD5557
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 19:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 984D5541AEA
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E85F430C622;
	Mon, 13 Oct 2025 16:01:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F897309DC5
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 16:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760371297; cv=none; b=RmXhsu975Ug4ERcZHFQwqpiAVAV9bNc140UFF0cKg7BC/ObvqbrRwhKF2VswJn8TrDE1f1oipm8sCu/3rxj9tYrHdQE9AGRSTmXWVcA5X05xlX86EI9xb5QbG4Pm22Feq2NGqDgnBPXfo2uopR9ogZlXBOsDKTBFm9GydkuNHtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760371297; c=relaxed/simple;
	bh=+UssLPOno9XWeKCQGJZY3GRGKSjKPPao4Ev4zfFKhM8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kAUqoM5EAaTLzYt40hdpUnwUOjf6hoPG/3EXQre4lD+Et4YngzSD0olQpd0RT7GrXdwobNf01uqLWvwF0btGjCc17M6m512NEDRjY/wLiNbk3UNXVm2B7DIl/F/8qDqprA3PhAGi2j97R7+hM+RNbHTpchi7UuU4BOsih+2iLAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-57f0aa38aadso5092753e87.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:01:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760371294; x=1760976094;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+UssLPOno9XWeKCQGJZY3GRGKSjKPPao4Ev4zfFKhM8=;
        b=nwAGjMBbHOOWUDD0LP9LjsBg+45V/wF/8OyB0bo+7KPKaI8eAPmx+XthsyIenb0FNY
         EMdPCPejMmBe+qC/qF4KUrM+ztZtF14UT34vuXZ/cuugqGF5wj62G4ZEVWYFUN5ZlKBZ
         UbAjlekif9sbhCB/viq5dXcOsjYW1RFyBt029i5lpEbt4WxABkugzW0xoCAGr9k8Lz8y
         rjtbfLKsHOTACD1zgjv3G3+8Ct6YaKZNx8vXMBgbtAO02wmq1XDGF9j4yMycuKr41Xv5
         AaGUPyaOYb0g9SmJ5COeWDnofKGjcWXnbi9ZhZIT0XRhIsW7CZqbP1BVpBGrp/FhCa2A
         G5fA==
X-Forwarded-Encrypted: i=1; AJvYcCVh1ee1MlUzDMplwL7DX7gLZ6TidVUT4O3Pcn3/c0qQkrPT8UXHpCIi1bdYdxqyu/O7ecOmVKc1j1Hh@vger.kernel.org
X-Gm-Message-State: AOJu0YxaOnoeOuU7IMQA2C91ajgJe6lTRQMdwT+jy6PgPi7sIMVRf9ki
	w9EYuE9GsihALk245UrBhCljSOCbV6hwLv1P2n5UOlAYLqRDQTAUG1lphv2d7QE+
X-Gm-Gg: ASbGncvpk4TIVhuxu+OtReZwbgG34moQvX4Sws1K3evqyPIGXLer3Jv3480Ll34zg6y
	/yuFCYDRdxnaT1d80BnKXhbhiuMETvz2o5TzfPKR7xginFe43LnrtXD1/gNVBGpYZdfxPtoD7lV
	8L14cicq7TCQ/C/4lUSCdnIAmFXza5CvWtEB8lIaJ87uv5xCy8zgHMrD3XJGvyutmJN/LTiCMdh
	VHwUXmcOF1hq3TKqctHEaxKV0A5tXZ8Zq6X1sGwUWeph3dHu8pXPAS7ShdBKawv6lCj4oeaKOcz
	0/sCDx4XzYd8yZjk996vjSPESKVQeh/Rgq6ce5hrnqEfHIRzR08y3j2qJgxOeAqYPHFRcPHINMw
	vsoAjyxQ3e0JZMIiVqYtSm94/LuCuaqZR47ZI3wnVviy2Tc3LldoBY+uafdpxqqiiVzw4iw==
X-Google-Smtp-Source: AGHT+IGJP9O0wczGUoGlxHfIHPhb3tyq3tkE78V4704oZ9w29XondLEOxIVLdWNJfVnYlDX+MaFiDg==
X-Received: by 2002:a05:6512:3b86:b0:587:7f2d:2577 with SMTP id 2adb3069b0e04-5906d9e75b4mr6146434e87.43.1760371293403;
        Mon, 13 Oct 2025 09:01:33 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4f51sm4263576e87.20.2025.10.13.09.01.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 09:01:33 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57d8ff3944dso4710175e87.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:01:33 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVLPQzXeCXORVCTQAQ9bWan2kHxtb0kNgdrLHNeEVXTjrQjsxcQewH2Th5Jg+60kNYsxGzSU1cIDwNJ@vger.kernel.org
X-Received: by 2002:a05:6512:3e0e:b0:55f:71ad:590f with SMTP id
 2adb3069b0e04-5906daea8f6mr6270458e87.53.1760370875744; Mon, 13 Oct 2025
 08:54:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251013152645.1119308-1-richard.genoud@bootlin.com> <20251013152645.1119308-3-richard.genoud@bootlin.com>
In-Reply-To: <20251013152645.1119308-3-richard.genoud@bootlin.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 13 Oct 2025 23:54:22 +0800
X-Gmail-Original-Message-ID: <CAGb2v66nojdOfU5oDOCTDummqpcXYuu5665MKJRee2-QfhS36A@mail.gmail.com>
X-Gm-Features: AS18NWDKdIBd1rTcxTVsXd-_vXNa-9kC6YbGbqd54hyWKYs7fg_lZoQPdbhPU9g
Message-ID: <CAGb2v66nojdOfU5oDOCTDummqpcXYuu5665MKJRee2-QfhS36A@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] mtd: rawnand: sunxi: move ECC strenghts in sunxi_nfc_caps
To: Richard Genoud <richard.genoud@bootlin.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Wentao Liang <vulab@iscas.ac.cn>, Johan Hovold <johan@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-mtd@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 13, 2025 at 11:27=E2=80=AFPM Richard Genoud
<richard.genoud@bootlin.com> wrote:
>
> H6/H616 has more ECC strenghts than A10/A23.
>
> Move the ECC strenghts array to sunxi_nfc_caps to make it ready for
> H6/H616 support.
>
> No functional change.
>
> Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

