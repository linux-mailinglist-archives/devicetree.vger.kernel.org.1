Return-Path: <devicetree+bounces-181347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC0BAC70F3
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 20:32:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA7AFA28162
	for <lists+devicetree@lfdr.de>; Wed, 28 May 2025 18:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE6EC28C840;
	Wed, 28 May 2025 18:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="3TAyPiLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560B5210F65
	for <devicetree@vger.kernel.org>; Wed, 28 May 2025 18:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748457153; cv=none; b=HS4DoNSFEfCDorM5tIEq2jSsL8N8g9FFcxyw2iIReX3BFhyxrYx3PyZrZHrS3KxC786o+IOoxuYArucWdppZehz94yZGhAzle5/Jf4a/i733KhRs+NOZfwN4lbAQpZ60aTsj9698ChaQSgvFIA89gx0jehSBt3snPDxbKG7n2yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748457153; c=relaxed/simple;
	bh=boyL95hUBCZDIgAKwsOxvCQrcsFMOD06ow6l9kom5z0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tp7Gj67jJCYiqL/eg/q+yfJGA1FINe0GMM0PPeXtTceJNR/NAJpUaQVSwphf6EIDgYh1lEwWRUOCZr+fDClqX6m3rhh+vNQHLFCwxuhVAlCuS3OVE8wKg2WrM5xuXyT5+crDot4GlVxYPYDytP5dgivZdHGQIN2xGfgG1HnjpFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=3TAyPiLS; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c5f720c717so134700185a.0
        for <devicetree@vger.kernel.org>; Wed, 28 May 2025 11:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1748457151; x=1749061951; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NGTzYMC2G2yNr8MqPcsRm4OyQAyOvCBgCRC7moKcIA=;
        b=3TAyPiLSY3kyl2SgzZkx2uLb8gp+61VdzbYo0DmRt1cMd1hVKn/Dv986W/+eNSwd9l
         F23ReAGw6nLFNa5gC6LDbbubtsfoIp2FjtNzmo2GkmJyGwHgdU1KlsWBWoVSAWxNNvvP
         ApcLH8rbQBOoP0XFwVF7alNNmLBqzW9IQSrTMWSvyRycWzaV0xQSnTMofMx8XeSGVqLz
         DKSeiC1PfHUTZewKwut++8T3SazDZXsHSvnzyh7UWDvKbzbJ44ECCIfxNJYnH1Q2mlU5
         j1vj06ULk4nq8J2GNZjXvf+bAHnohDi/F3q2KA12khSh03GJ/bavKjUu/4JbiU7OvfoQ
         S7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748457151; x=1749061951;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0NGTzYMC2G2yNr8MqPcsRm4OyQAyOvCBgCRC7moKcIA=;
        b=J/zALwwQLvCN1kTSBJRYy9iydXCh+T25k0J/C0ulPG7W/4whsCuydMcC82ENifnCpT
         qzVAg3Mjbdcrh6+dOvSHlBzI9Wg9z1acuAL35L/vnOwI8VdvwKSV/wJPJyy66NjzGfHX
         gbsryGS0PdrAMHJsD3GRtcJxViXByeDFdnsNtVZWlAW81P1Tgj7pl1K4bnXxC3MW+e4E
         U17PuZBNmBND2dPzZXTIvAarhSuc8sh3p5cjX2SNebRb2wEsf6qrouirBNzo3ak5/fmC
         IHneJUZmNunHAWlUWB3TLYeO3B/QzjEeYbYVUP96ZCRYTkKEZamF9fi94UxwCPlruYsa
         BjvA==
X-Forwarded-Encrypted: i=1; AJvYcCXySLcZtk7xAg9P/K5ed8MDUcpKdf3zcRknUhWAfb3Q2KRtn+AhosQTTN2kOzjw4a2qc3kfXSFwpTn+@vger.kernel.org
X-Gm-Message-State: AOJu0YzDCQGMEoxzMvhDnjqFQ0NKDwUfkwqlMRRK152QwN5qcPvt+pZz
	+WYyN+h7arFFcsAX/3miIAbg8muXd3sjlRNR/vl+X1xyuBGB6sRZLc9vPoO4IghyK3PdRluZT8k
	q55qKX6uaQi3b+e5KNAHs4rLO+rjHCMk04D5VblBz
X-Gm-Gg: ASbGnctBtrK6y9m/yBL6TMM/ZFYW6fk1yasAFZQfM+vtxnvarbBu6YgJhpKhmEx7IIZ
	aPQ+O7KjL+4Ksy7P5Fqgs+Dr9spWWqaMk0tCVm+vY+ES/AUdsav7F/S6WLwTODFf6w8PSWwq75H
	cmImbqG2bc2pQlJcdkLz/cskuk5DYL5IgxxwA/rQrUELMTO2Exd979sXveUS0u0AkTgP0g0NmS
X-Google-Smtp-Source: AGHT+IExjLW+OCGUhyxB4Yj2HCQdswSJI1K1nORrngON2Q1ifDySpWD7ARMRv/RfZaNcmXfycQASxLW8zdGbiWFQIMU=
X-Received: by 2002:a05:620a:190c:b0:7ce:eab8:7c77 with SMTP id
 af79cd13be357-7d09879c863mr89879785a.16.1748457150880; Wed, 28 May 2025
 11:32:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250528174426.3318110-1-dtokazaki@google.com> <a0bf24c6-58da-42e7-b686-03a893b38ecb@sirena.org.uk>
In-Reply-To: <a0bf24c6-58da-42e7-b686-03a893b38ecb@sirena.org.uk>
From: Daniel Okazaki <dtokazaki@google.com>
Date: Wed, 28 May 2025 11:32:19 -0700
X-Gm-Features: AX0GCFsIvW1B8OF9VcWbdG8SdgyKuzexjZNYqZSwytZ6BMidZ9l57KoXhMWZKQE
Message-ID: <CAOC4094v+MyrWgbkDJZ5KJhzuTmmgAuS-XacbFt5jHK3aYtOrg@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] userspace-consumer: adding is_shared flag
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Zev Weiss <zev@bewilderbeest.net>, kernel-team@android.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> What is the use case here?
The request is for a regulator to be controlled by two different
subsystems. One is a userspace HAL and the other is
a kernel driver.

Alternatively I could expose sysfs nodes in the kernel driver
for the HAL layer to connect to, but it would add coupling
between userspace and the kernel driver that might not
otherwise be necessary. The userspace regulator driver
would add some abstraction between the actual hardware
and the sysfs interface.


On Wed, May 28, 2025 at 11:16=E2=80=AFAM Mark Brown <broonie@kernel.org> wr=
ote:
>
> On Wed, May 28, 2025 at 05:44:23PM +0000, Daniel Okazaki wrote:
>
> > Currently this userspace regulator driver requires exclusive control
> > of the regulator to operate. This patch adds an optional flag to
> > remove that constraint, and allow the regulator to be shared by other
> > modules. This allows for userspace to share control over a regulator
> > with kernel space.
>
> What is the use case here?  This is a debug tool intended mainly for
> when you're developing a regulator driver and have something like a
> development board with no consumers at all.

