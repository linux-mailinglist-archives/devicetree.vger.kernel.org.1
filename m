Return-Path: <devicetree+bounces-196889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFEDB077E2
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 16:22:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3307C582E15
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 14:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5611523BD1B;
	Wed, 16 Jul 2025 14:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ludwQKLZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC021F75A6
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752675716; cv=none; b=mcvOL8uSFmJS6y5twZoVkyiBZe+XzvRj5U1tWRZvXyH2DERLgXtimAsuY7njsHrhEZgVaoWvuElU5iQmw0h5BxPRrerJteIvDlJpbsDnI7auiiDkimAekHIO9J+kwC3pr8TS8wdnyR1jrGzgDEwsnglrYALHRGqwG8BZk2PBuT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752675716; c=relaxed/simple;
	bh=qaZ1U+EgInwMaLZWb6rGxEaSX9h3KvSTvEqAi3ZlncE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SzlbAXGuzOnudW8PsCGMfbsaztT+/yOcezM+ySmCbEaLJ8luL+BrswAWrkjColUPlkY1VKh2f37SlgoSNLH99VlxWVsYar2kP5Lwrs0xyQal+ssa6kT8K918aqgPNxkmYUzBfQA+ZeyGo6KF0ahhK9WoKmMkWkrMtVidv5DH6H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=ludwQKLZ; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-311e46d38ddso6070181a91.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752675714; x=1753280514; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mz5RRhyfwITv33oCf/7iVVV0cKwknfvfP+MVHktAv/o=;
        b=ludwQKLZV7DZRpZluiUp0XBWk6SDjC7XwQ38LQqoYWnZYDUznWpgA2vo0AOh7mDLzD
         ZaHTNz6QLbOlGz+5ahKymzvHFWr9RzNEFMiIEy5G6CvMyFLPf/ZSzd6Fh4cXV/GiiOkk
         uNXdrhAWW+zaQoSxQF+XnxtjY6SJLec1Ik3bE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752675714; x=1753280514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mz5RRhyfwITv33oCf/7iVVV0cKwknfvfP+MVHktAv/o=;
        b=O1S3s9kFjxccZn+ZAON9xtCJQNk2B+Y3W+WZ9CK0vtmaoX3asexOHU54IGRXa4A4s+
         eTeQ/j4mfGjSEelFN69s8EOeshuEU/RbSF+Fnb+Bm0i02hzJWAeeVO76ba+Mn+Nuc9GE
         FdPqvpKKUtxM3udDft+d1WMVteiSvGAMDNPRw+5Rr8zMRJhyIjDL38No28DwAkkrrN7K
         TeBuHdVLxTozb3Qe1qNgHx2pD8FDQb12tXAbIyaCKD0URGxlgH24g6z7L+2G2BOKBoLH
         /gMajlX/ueMy4IvlRZdJnMxzHhFyNGEyxwRxX9Q3mp/6aGB6KuEko+C0gaS2RRBEV+3b
         JK0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWLEFmOwuwBQs1nUD2eZg2nOvuvrQoSTKj8ua4KsUaZ4GkkjhdbcFDwDpaoQft3SoLqH01pbJivgJM0@vger.kernel.org
X-Gm-Message-State: AOJu0YwW6/fHoBESF0A2iif9NGNPDJT5HNVbXzL5X3zVkDrIiGTpLz4X
	KJDDWg2E0hJupoX5W241C1I+BqYeYjSrRtp0Xn5Phsc4XYgDTcqsBQ4eLhpJfguSTPi/y/XFxm+
	J9Ww=
X-Gm-Gg: ASbGnctWzigtWE6h9pVi4+PTLjc2MLqmoloMJCpQrUpAQCt/bSqqZKKPAspwjWQxDHP
	I2kr49+RTBN0tKi8XZQsV/Nz91iVEf5w42y1+32sPi2+QhTRaOeHqx9Ke4aq17HFScnwsYCw9O/
	INKFvJTiRF1xyE+lRkHmpKvnyNwpaDKLVCWJcR2tAqhGx30WRAh4ZcSKtwB9SD432smbC6+2DD8
	Yvxzscojz1XG7UUO00DWe2IU0RN1RZVb0h1ER4xec/pglT1x38cLRZHaMfNXUhmNYUw3xzJhoxJ
	dEl9mwLNKYV3nAJMeFMSJT5ZaVPDAld32MUAuIhMt5vUp5vGDiifKviEscfHfj4f0QJHZ7Lg3YL
	ym1h4bovu62t/o+o4swN2kyTEfMvKdytOBEq4VzbxyG+7ZD3TZFS2fTUVeerliweEAw==
X-Google-Smtp-Source: AGHT+IHlTr9sEdlUCyz1Yia/g3Eol5xDM/NE8oH5FHq6JiZHXpkTQw5l2fHxfRZJxGUlwAt6hJIHWg==
X-Received: by 2002:a17:90b:2c8f:b0:311:d258:3473 with SMTP id 98e67ed59e1d1-31c9e6fbd7dmr4376790a91.13.1752675713848;
        Wed, 16 Jul 2025 07:21:53 -0700 (PDT)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com. [209.85.215.173])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31c9f29eef4sm1593136a91.41.2025.07.16.07.21.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 07:21:53 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b2c2c762a89so5468296a12.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:21:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUU8Us65fddGNgEUqc85kZGrbYHCk2vsFBJ0jmPbyLmIBxhiAKcmCqlRBJmlmcB5ciwCWSBcxrk4i94@vger.kernel.org
X-Received: by 2002:a17:90b:1646:b0:2fe:85f0:e115 with SMTP id
 98e67ed59e1d1-31c9e77cfe5mr4368025a91.26.1752675712704; Wed, 16 Jul 2025
 07:21:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250716-topic-goodnight_cheza-v2-0-6fa8d3261813@oss.qualcomm.com>
 <20250716-topic-goodnight_cheza-v2-2-6fa8d3261813@oss.qualcomm.com>
In-Reply-To: <20250716-topic-goodnight_cheza-v2-2-6fa8d3261813@oss.qualcomm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 16 Jul 2025 07:21:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wj=J0-3rpjEsdLzgHzY3nXw0CWaCTHfbkNnu5H=VCPgQ@mail.gmail.com>
X-Gm-Features: Ac12FXzTw0wKAIsfrwSNsVdCEfNSNshL9d8ykTsLQev02btB00hc45WqX4Wa3pM
Message-ID: <CAD=FV=Wj=J0-3rpjEsdLzgHzY3nXw0CWaCTHfbkNnu5H=VCPgQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: arm: qcom: Remove sdm845-cheza
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Rob Clark <robin.clark@oss.qualcomm.com>, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jul 16, 2025 at 3:16=E2=80=AFAM 'Konrad Dybcio' via
cros-qcom-dts-watchers <cros-qcom-dts-watchers@chromium.org> wrote:
>
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Cheza was a prototype board, used mainly by the ChromeOS folks.
>
> Almost no working devices are known to exist, and the small amount of
> remaining ones are not in use anymore.
>
> Remove the compatible strings reserved for it, as, quite frankly, Cheza
> is no more.
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 3 ---
>  1 file changed, 3 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

