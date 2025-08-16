Return-Path: <devicetree+bounces-205264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F614B28921
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 02:14:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA3871C21984
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 00:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40BB10E9;
	Sat, 16 Aug 2025 00:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmnz0MXc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF2FB17E0
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 00:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755303242; cv=none; b=lXOPBhFJvvSj6NZO60Oe2J/Npt19pkTOOmyT0EUKjUmdCbJjb20PQ4jwyXSsbEor5lnkOdLtMfDX6VCbXVtKq3lHK4hS1+1WYGJ1fzp0CcrAqiCMd449rYdzNK7RFIc1uOW1GHi+5Pav81VZbXmLlZduWXh2reMhKn4GEzrgvNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755303242; c=relaxed/simple;
	bh=fLaqf2awrJNL9uv9xCxXAVCx/3iMt9F+InNgK5ZkY4I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Kd2iEH5q5Qfeoa3sDvUBJSoP7hOVRAIT+vguPm1okPpiOjWEobok9UH01mczKztfgLIx9+AEqXUrG4n7O0Hkb6cJx6Yf+z7KHV9HDJgqJFqhoxtzqnln63jEfyTLeWnIYTyQwpohVhw01vmm+Rwo1V3gM7JnoCkwxwzt3UObcYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmnz0MXc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22CDDC4AF0B
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 00:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755303242;
	bh=fLaqf2awrJNL9uv9xCxXAVCx/3iMt9F+InNgK5ZkY4I=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Lmnz0MXcjYLVTi1mqtWpU+U59wED9ZDSrgEmzV9FQ2Qj/EzaEiHnozG0LwW5aniEn
	 5U1LV4o1NOe94Mv88CtCSVrGrCBa5H2ta5ATdyol6kC4nKW8LMQFoNFgMbHhTMa9ow
	 vdwdiP7z2KFJFuvPVNdBSfTgBjX99lMLdjw8Nl5+haHe/cJGekvNKi4qyZhpo5y4l0
	 qB4ttumfk1h4V0nK8I2IkRb07TDbv8+ZIDwc91Eh/Q1mc/TChOsGFt+qEGby/mg4lM
	 WHM2QqTWmBtTfL99J3Qr3cboqLT1y/QWXWHoHwGjWO2DhYk4eaBYOE/8lII8DXUbvX
	 3rmrexbXYQojQ==
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-6188b72b7caso2868262a12.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 17:14:02 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUiMKzG92KZ3pIJtlrM6G2jITVOcpmp56YDMHBVqD8DVb0vrUO1uVv/kiLQ/wFA9sKhcsUX0282ho2+@vger.kernel.org
X-Gm-Message-State: AOJu0YyieLOqvdj51eek+f6WBnsu7BoAZ2dfNrpsJQpx7Pjp9v3i1RtI
	ue3vAOltvz9m66HkMoILqWIthPLNcTgCFRlYejFRptPVGN4saUkr6Aqd85ZcpmdjnKznqrz3Iyg
	W6ktuh3DxI6xTm/f5ibu7/2hWEm5gQw==
X-Google-Smtp-Source: AGHT+IFyQPbQZOaRNZPy1bRsx/UfHbFPiVTd3Se30scn3530lmWaMeyfQuqEBQCdQEt95z1/kRLovyY9OGxd/oiGobs=
X-Received: by 2002:a05:6402:254c:b0:617:dc54:d808 with SMTP id
 4fb4d7f45d1cf-618b050d5d3mr3040909a12.3.1755303240679; Fri, 15 Aug 2025
 17:14:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250815194730.41695-1-eajames@linux.ibm.com> <20250815194730.41695-4-eajames@linux.ibm.com>
In-Reply-To: <20250815194730.41695-4-eajames@linux.ibm.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 15 Aug 2025 19:13:49 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+=b+Mp5M0OZn3U35u4Qy8ZqgitKa+tUro9q=7AeKqGiA@mail.gmail.com>
X-Gm-Features: Ac12FXw2j6IITcEbcT1NDGfV8vqnxKghPQchKnzgWDT5cIJSCqMfW5Ar_VQBokU
Message-ID: <CAL_Jsq+=b+Mp5M0OZn3U35u4Qy8ZqgitKa+tUro9q=7AeKqGiA@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] dt-bindings: hwmon: Move max31785 compatibles to
 max31790 document
To: Eddie James <eajames@linux.ibm.com>
Cc: linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org, 
	andrew@codeconstruct.com.au, conor+dt@kernel.org, krzk+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 15, 2025 at 2:47=E2=80=AFPM Eddie James <eajames@linux.ibm.com>=
 wrote:
>
> The binding for the max31785 is the same as the max31790, so just add
> some compatible strings for the max31785 chip.
>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../devicetree/bindings/hwmon/max31785.txt    | 22 -------------------
>  .../bindings/hwmon/maxim,max31790.yaml        |  6 ++++-
>  2 files changed, 5 insertions(+), 23 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/hwmon/max31785.txt

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

