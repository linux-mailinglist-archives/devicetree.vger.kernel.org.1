Return-Path: <devicetree+bounces-231695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4E7C0FCFA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 18:56:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 096AB350472
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 17:56:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5952B311C15;
	Mon, 27 Oct 2025 17:56:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IS5CI5rQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A17D3164A5
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761587814; cv=none; b=JXbFs0/7EXEfne/4x925e+z0pd1FLMGEvGjPubPRCPKO7oX+DeW0iJ29u5tXCSWUbTXImccY7WDRoUnY/GvyZ3BkTbhNgbf8mU5fJyGQ0h2QR+YEb8MSwEGjPaMqH/uWKh8EuHsjVqJjruNpCOADCAuNOSWJia0IIWfz0pvaFF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761587814; c=relaxed/simple;
	bh=SCIPeksxx2uDarfAhuXFCN/oVVLcwA7r7uPbkIEyGqU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=I76Hyt57PLHsyXebhAvy/VgYggsPUXBwF7kz4A0Vye5Rt6beBkGKOKzDex2GAR9bYXF9QylV/nxcqC8xT9GnmfVo3O5kh216K8B8n3Nldcr6rDIv4ZsrYr0tqvKjEvD21NugT1ljudMFGyJtZxefAVPSGOSP4lntlICAh5JjyBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IS5CI5rQ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4770c34ca8eso15405735e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 10:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761587811; x=1762192611; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SCIPeksxx2uDarfAhuXFCN/oVVLcwA7r7uPbkIEyGqU=;
        b=IS5CI5rQdF27eg/WCpXgLI2Zyv+9BcInRCb9Eu9VOCfKCHxPuKzd3ul3LeVDp2Rz25
         gv5lDFoGKy+UukPfyev+KGMqnFRw8ZBsw49dGyuiQERap0Ekw2dz9pzDLupUR5pqeAfG
         tsJloMnfa2Bi7Mo3FtfHqxVSuOLOVuePsGJzdqNtmAQT28TIyIJ1uddZevmBbmJDzSUx
         KIFizCr2A6Axgcwcj3YBPoyk7AUqNr4zLmghZ827LJZ7qi+z9A6hUVc1akUwjUFQ+Qu/
         JUhawW2kDFauJuWErOZ9Ho2AYfzYlK3l7gmMQYL9r/QAbDv9ycriWM3IWUOQ9O7tZind
         H8gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761587811; x=1762192611;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCIPeksxx2uDarfAhuXFCN/oVVLcwA7r7uPbkIEyGqU=;
        b=mEcDv0wP+ZEdUvSVlWVfqpBRMF36A7i/IGieokOdQnOtUpiZTjlIZkFPY3+M1p8MVC
         vFYx4WUV5dsUZI2EGlgyaVoD/6TkgE37GSHGYHZFLQMfIKstk1pKXa8dUru94TaV7ZHJ
         uN/M0PdCc5etV8UXcEhefXhl6bBiFO/1puLcEUWXBLShITZ/LhAiRKd28Gx3CAiML4BV
         W0BxftDuNKsQ3coSE4a6Kh2FjlLSfa3UjWnkWxZBQobGSbeP5anBnu9XwF9rpY54ucQC
         ybICtpKj4PXWSrX0Xyhli8okaDycoDLGpkiDyH2GQsbxBJx6pylFnu6HJ90CkKw9zgN7
         +GNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYjONMjhcp8U2m2pjCj1Aksorqi6QwlEWylRI24h0oWO+UhPOnx2mlD8TONpYQybUAUUFHAFgvCDCy@vger.kernel.org
X-Gm-Message-State: AOJu0YybQCcCDZmZwJ4Qc8b6MeoT1awOUt9GAnKbUdKTQq6pIhh7lOor
	fRT57twWrDXxRD3TleFXgnfDzrySADDC7cdFa18kyTRffBlcPQmoixHT
X-Gm-Gg: ASbGncv0wpNaFJJ8JHrrNy/aXqQm9o7K6SxYQI/S8O7aQFpLzaQr26HJ2XjKgaEWoR8
	PFCwt9sAChQuMP+Uk2EqULraSQIhfrxeTYXXqDQ4rF6Xq0HcPO2PXdysByX0g+vEa+acLEqZ/It
	F1hI2e0LHZyUjKIn4dweDKnflYCXkjajk8bgkju+RMQtP7NufDiz/T3Rxm9+iXwqAXstBoARSQ2
	P9RJR6XSPOgRrR7Nhf8YZ5sWPLJPOoP16FCaHwhlVWULtA/KPebm+4CpQi0KkUzCvPlG3pdvTcD
	3jVAgGZxcn2xa/nFl3XFVXcCzg+juHGpxsjium3pjZvuqYuDqhNHsq6D2PewYllmuZ6hS8/wX/p
	R4AUNX87YGGx30UgtvprfgtVr2evi/pKGP6S9Y7uIIyO+39d4wlCl20Cl/Qkym+bvEe9822Yrzv
	CQYFLRie0VxnBrQC+mtDHv4Kvs75aLb5ScCQiFt8GeWu65ncNxvt3srFn4vw==
X-Google-Smtp-Source: AGHT+IEihm/mMfPTi4flOTdp91sIkNaqwi2a8InYOu2pJ2ai1utyKQHaHYaafUG+/91FRnDBC8gdGw==
X-Received: by 2002:a05:600c:64c4:b0:46e:1abc:1811 with SMTP id 5b1f17b1804b1-47717e512bamr4754785e9.27.1761587810623;
        Mon, 27 Oct 2025 10:56:50 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-475dd4cc596sm152270065e9.15.2025.10.27.10.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 10:56:50 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej@kernel.org>,
 Samuel Holland <samuel@sholland.org>, Mark Brown <broonie@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Chen-Yu Tsai <wens@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-sunxi@lists.linux.dev,
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH v2 04/10] ASoC: sun4i-spdif: Support SPDIF output on A523 family
Date: Mon, 27 Oct 2025 18:56:49 +0100
Message-ID: <6204310.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <20251027125655.793277-5-wens@kernel.org>
References:
 <20251027125655.793277-1-wens@kernel.org>
 <20251027125655.793277-5-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne ponedeljek, 27. oktober 2025 ob 13:56:45 Srednjeevropski standardni =C4=
=8Das je Chen-Yu Tsai napisal(a):
> The TX side of the SPDIF block on the A523 is almost the same the
> previous generations, the only difference being that it has separate
> module clock inputs for the TX and RX side.
>=20
> Since this driver currently only supports TX, add support for a
> different clock name so that TX and RX clocks can be separated
> if RX support is ever added. Then add support for the A523.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@kernel.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



