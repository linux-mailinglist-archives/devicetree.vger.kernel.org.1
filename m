Return-Path: <devicetree+bounces-179333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D25ABFAED
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 18:13:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6341216217F
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 16:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C3052222BD;
	Wed, 21 May 2025 16:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="UCsaxLeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0018C217701
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 16:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747843948; cv=none; b=Li5lgX+vOW6X5mJbSr+M0OswcNGrnRAFmOsdqsOluX9ypuoLJKkb/KIzLa8RMa8n9NoYmFdtCv+4dVAgrPQt0NBY4qOpYE9ynQa8Es78gQp+tWAnxTs7UsaSitYe3ZcUrYwLCN5DRKQt8I2S3Ed3d2Tax1j+RN6B39iC6HrZad0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747843948; c=relaxed/simple;
	bh=dtaeqU1G39an9ZFiTdwsQrShvS+qIXW0eE3WX/z5y3s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R98EgPLxgOHNX6/p4+1Ldllx/pdYAq/amRaOU95sIwclf9xqsAN4G0tZOy2AeHv3elqTeeeToI4MStCRB26bInTJ8atNMjoz8GcB7g5k309b6kHqX1qnbyHwwYDHXw1CiOoVjab7+1beNp4hQnUU2igN0OlfY4bO2JDf5y5AhUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=UCsaxLeF; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3d91db4f0c3so31869095ab.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 09:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1747843946; x=1748448746; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=csfhBD7WPqjX3LJWwN1LAplR1IKrc1AR/UbxXmoRkgc=;
        b=UCsaxLeFoZA8NiusDSna2cFlcCa3h3hScuZsV2Xy7bgVUboSA07/BSdjii07WDa/L+
         C4d16pRZCe7KP2zdTKz341geb0K8zT7T8/RrUAmcKyUJhmUqNQ8ylAmdyoBt8s4Be4wr
         ZzJJmR3tsIbuaf1NFMPI1crEv4hzsd+vuM69ObLe2MLRqeAlZKJR0LoXzMrxWjeMR0qZ
         2gK2v/VyhYEMafGIO82p6qqT+GR4fVuvlw+dnGbKLSaKZWisorBweuN8ESh4wCxB4BgJ
         a8SKAyfu3KIBiCqz4Bv91sJOdN9epSkjeUQF+04hhEQkzz8FYSCAKmH6pYLZW8zKpufb
         p9+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747843946; x=1748448746;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=csfhBD7WPqjX3LJWwN1LAplR1IKrc1AR/UbxXmoRkgc=;
        b=IJwQwCSUYH0w/Vj/cB7+Oc2hwZrJZZ+ltg3f6P66DhbQ6XeSVWX/ELpJzq+gIefki5
         A5m/NFNTfanDT/wxxVZq+5Rq4ZMKre/vOLCkNDmjHMAjcbOusLHMUXrEWHi4WOtdmFhO
         FyAA3ITXgRVQy6l7eSEH1b5zddpZUEgUECR2/N6tZ6jElr2OEYE7i1+XTl/IrioyPPe6
         leDNmv2Xxjc11b+3gRUIbB9WTYGj8VJT4PnNatEkj5aCUipvaUYE9JEu3d8nicK6No/V
         dA1e8Yt2MIgPzJSOGZtcmR4/JihcgBQ7Ag6B1F45Vz7/yp/1Fut1TLq1WqiTPwb0Tipm
         olPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUVRvcqipp8on4jLkbzFUIheJTEmfIiwJaU6ZG4QmAMjJaukntJQxVZXzBluAWrTzwr7vR6RPxboVLa@vger.kernel.org
X-Gm-Message-State: AOJu0YyxZHo0tJYhymuFjoO7+MyaQPxIR2+y54W3VSgAGF2II4v8Rhf8
	BVmPOnTWJIV6EmoNkmy/4hEMkhpwE6WNzy8mrAOJhV+eor9vt2bY4BuQMiw7jdNSXvu6VyYQr7F
	mA/yUSwRg9mTOqPKPmbI8+/YdmZ7JYs7kqu18BCPJKN4ZeqimmrcfBmA=
X-Gm-Gg: ASbGncvaLgAnbW5OXXi47+VXFxYtab/J7XELV5kv0XmYULO2zihmhEWeLUC28YRB2aD
	cm/2NomycU3x9eAcm8D7RgNtUrcfvkx9LQOqqUkPB3gFbHqV2ZGftkn581KyCtUH5J3o4k7UtFy
	VeMbBTt5dOVJJmk8uHCkgpn7G1XXYaswrLaIY1T3QHKSDWcZ9TZrcH7YMs44iulZfTNvk=
X-Google-Smtp-Source: AGHT+IEJfNximcpI4sHlE4lUNome16vdlnckLggBWOBVg6ylxViQRV/IB8FJAzsAfgLOWXvqDtLN+SQeS+vb85gj9z0=
X-Received: by 2002:a05:6602:b85:b0:864:68b0:60b3 with SMTP id
 ca18e2360f4ac-86a24cc81e9mr2366719439f.12.1747843945979; Wed, 21 May 2025
 09:12:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250514-ubx-m9-v1-0-193973a4f3ca@geotab.com> <20250514-ubx-m9-v1-1-193973a4f3ca@geotab.com>
 <20250514-saggy-shifter-e4ac7152f823@spud> <CAN=L63qsjEAvfocgP0tGrpe-x6Rx1gvTAkPE9i99Ai2zJj6ssA@mail.gmail.com>
 <20250515-varying-swan-31ca63615b43@spud> <CAN=L63oc7a6+_e+nhiyCkttX-TSbcjcwBmSzPsSk94m1ebGt4w@mail.gmail.com>
 <20250516-unfasten-submersed-e854fc9a0142@spud> <CAN=L63phSnssXs1p2HXhf08HMaHCE80EgMZQR0vPqhME2tknBQ@mail.gmail.com>
 <aCsrIcQ5L3kcXE6L@hovoldconsulting.com>
In-Reply-To: <aCsrIcQ5L3kcXE6L@hovoldconsulting.com>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Wed, 21 May 2025 18:12:15 +0200
X-Gm-Features: AX0GCFv8kYLaeRPM-cP-DAyeZqg8MlZwbWA_UKP8dwerk5JNpfJvQrsyWDYecjQ
Message-ID: <CAN=L63o=wuv-7a1U4W-=mee+JAWhmvYMDsqkckYV3zYYaDTPnQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] riscv: dts: sophgo: add zfh for sg2042
To: Johan Hovold <johan@kernel.org>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 19, 2025 at 2:59=E2=80=AFPM Johan Hovold <johan@kernel.org> wro=
te:
>
> We still want a new compatible string for the new device. Depending on
> how similar these products are it may be possible to avoid adding a new
> entry to the driver for now by specifying a fallback compatible, for
> example, to neo-m8:
>
>         compatible =3D "u-blox,neo-m9", "u-blox,neo-m8";
>
> This would then need to be encoded in the binding.

OK, thanks. I will submit a v2 removing the new entry from the driver
and modifying the binding to permit the fallback.

