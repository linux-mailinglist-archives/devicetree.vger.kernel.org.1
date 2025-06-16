Return-Path: <devicetree+bounces-186391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B883FADBA87
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 22:06:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6D283AE93C
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 20:06:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74DC01F099A;
	Mon, 16 Jun 2025 20:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jM5MFYaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A39B31F09BF
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 20:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750104383; cv=none; b=BBo5ZzbLaKcMQUS39iFd2BQxOLb5Y74k580rn4EbmSDr+WbofKo5L5Rkg21u7IkikJk4K+dPc7FjLWC5zlyesmbuRMoTQcPDqmHkTgu9Vp6bsRuSk7tZsPVFvw2SPezKrnk6gYtv20MfCWqEe8d3Jk1dPEm1lUqOl2WASsk25eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750104383; c=relaxed/simple;
	bh=F+VE2w/Bf2NW2VK78ia3gGkdy1w2svOYhGi0KVskPEk=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=IbQKpoTa0zFnK50joQ5GTH6iHgAMHlQtwcit2lRaM5UjIflKRU9MLJMFCrcG3FJ1A0ou5brs2qW1oj9iXmnpfeqj98Pe1hzSXwKkIvhI6anN3VdRrlvNMfexATWCtvSBAqETFu6W6Dbhh1aoWrAAWce75KTzqpwNWSZi3X/cpcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jM5MFYaF; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ade58ef47c0so19751166b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 13:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750104380; x=1750709180; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8POarTnwTsZnqfhrAinkSYAmj8nVgLuPHQGt/YjMRSo=;
        b=jM5MFYaFRLXdjI2UszN+sVgisQ0rowew/p2GxLOUb4UB7HkHP5PW0U0YlTOiPyL3e+
         xs+cPt8/Q6KflAouMOMuBFgbKCMa+V/ew4BJ8be4mCejHS3HBlRmJQ2rYAV20XxqwEw+
         qYYRqKZcXXGN5sqt00sf6cgzSKVAa7FPEYgkWkzm1MCCX+kwDYJ4pGiyCPaUrB9dos0h
         bYASXlay908e7F6zYI7Jea/QjMZlAEQcbJmYJ23uTnvbChoGF7RseC5V8EIEnH/2JQ0f
         3QqT7pKiX+ICNAOjaNKWCN4Rqh+d7HxW0ji5KrtVd0/zsuYs3lzoMiXGdCYRJGg6ImEn
         Lzyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750104380; x=1750709180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8POarTnwTsZnqfhrAinkSYAmj8nVgLuPHQGt/YjMRSo=;
        b=pxMTThqnhJA8IdsUPiOetk5UYA70aVCJ3mYITQJw33UKOjTDHARwc5q2XmTc1U7Gys
         +sh5GYKVbc76bZ3esEKhE2mQsGR+94JMVf9rW0jw0uswy6ChvQIAK4oJToNwEdQZ+WGA
         Apy0EXek9PkKhc4iUhHITVKPtTFafWUy8iUoVYTLldjCABRYixdqSPLrNv+/OOJH1YQY
         fQQpSbDPa5oTDrp4gxnmICyKso8F5MIrVXxlLqp5jMthnjLdOTgQoQjjvcnUcT89bKrC
         JzMfQYg4AZaHNPev/ZV1ttQ6ha5t9+eU/n8HDhpaTG0/RauTFWSA915o7Aj6OOmdhSxS
         Cz+w==
X-Gm-Message-State: AOJu0Yy70N4GvsQ6PpRRwam7g6feCeBTKFaUufC7k5qXm123uIMmEt9E
	L6oyU2rXs7xMCzvZpJp+poMDCBEHruavpdpfY4FgT/uHVhgxBHIy/T+qAL+akHZ4QC5C3olg6Ro
	z3X+Lq9/NuWwSt7cHHIF2Pb0Nt423gJbfXrBA
X-Gm-Gg: ASbGncsFc7ja1mfH9t6xhRz+hVr8sCaBuj0TpuDGAPpXzhSpW7+rMysQG+75NYiumF3
	nJ5aNbBEWtpgfecAAOCxWBCiMBpisLNPjrrj6/FCtdwibyD3RnW+dD093lQJWyX5sXujLQW3eLo
	yIDItc59F76oC7261KmEMDuXRI3BKJ603Lc+EoJ/I5kJIe
X-Google-Smtp-Source: AGHT+IEUe4o7beKamGi6q8vhUtce3NLq0nqQYPtQYXXdAIkLeA/rbY4VTx9KsbxE7gj3OWxfbdhj+p8woFZRXPn5Hk8=
X-Received: by 2002:a17:906:9fcf:b0:add:fb5f:75b with SMTP id
 a640c23a62f3a-adf9bfdc8e4mr1128685066b.2.1750104379647; Mon, 16 Jun 2025
 13:06:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Jean-Francois Lessard <jefflessard3@gmail.com>
Date: Mon, 16 Jun 2025 16:06:08 -0400
X-Gm-Features: AX0GCFuT-eofgNL6lVZTd4uLWfTXstHmLhlKrHYAH-2KoUJ7X8mqYxeCxK2wZwg
Message-ID: <CADsqogAs1DCSJfkAkj_mwMwS--WMFPzvmWLonuiCe3XaNABVxA@mail.gmail.com>
Subject: [RFC][DT] Guidance on device tree property prefix for TM16XX-class
 LED display controllers
To: devicetree@vger.kernel.org
Cc: andy@kernel.org, geert@linux-m68k.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I=E2=80=99m working on preparing a new driver and device tree binding for
auxiliary LED display controllers of the TM16XX class, and I=E2=80=99d like=
 to
request guidance on property naming conventions before submitting a
formal patch series.

The driver (tentatively named tm16xx) supports LED controller chips
that share a common hardware design and programming model, produced by
multiple vendors, including:
- Titan Micro Electronics: TM1618, TM1620, TM1628, TM1650
- FUDA HISI Microelectronics: FD620, FD628, FD650, FD655, FD6551
- Princeton Technology Corp: PT6964
- HBS: HBS658

These devices are functionally compatible and appear in various
consumer and embedded hardware (e.g., Android TV boxes) to control
both 7-segment displays and custom icons that may look like this:

          ---    ---       ---    ---
 [WIFI]  |   |  |   |  -  |   |  |   |  [USB]  [PLAY]
          ---    ---       ---    ---
 [LAN]   |   |  |   |  -  |   |  |   |  [BT]   [PAUSE]
          ---    ---       ---    ---

My current binding defines properties describing hardware layout, for examp=
le:

    tm16xx,digits =3D /bits/ 8 <0 1 2 3>;
    tm16xx,segment-mapping =3D /bits/ 8 <0 1 2 3 4 5 6>;
    tm16xx,transposed;

These describe hardware characteristics (grid/digit arrangement,
segment mapping, transposed display output) that apply to this class
of compatible hardware, regardless of vendor.

My question: Given that these properties describe a common hardware
class (rather than a specific vendor design or generic LED display
behavior), what is the preferred naming convention?

1. Should I retain a prefix like tm16xx, to represent this hardware
class (as it is the most recognized functional family name)?

2. Should I instead pick an original vendor=E2=80=99s prefix (e.g., titanme=
c,)
even though other vendors produce compatible chips?

3. Is there another convention recommended for hardware classes
produced by multiple vendors with compatible designs?

I want to ensure that the binding follows the preferred conventions
for upstream acceptance and clean DT design.

Any guidance or suggestions would be greatly appreciated!

Best regards,
Jean-Fran=C3=A7ois Lessard
jefflessard3@gmail.com

