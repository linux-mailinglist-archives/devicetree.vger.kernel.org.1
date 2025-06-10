Return-Path: <devicetree+bounces-184411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E84F7AD3E93
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7808E17B3F8
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:13:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4522A24110F;
	Tue, 10 Jun 2025 16:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="G/5LuwiZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF1F233151
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749571890; cv=none; b=Uh6OsvNI0TtnvlYgSh3fDlsoGWM1zm12YUxetdJpOwAz3DsYQv/GcdfleCjLMWDuIgacy6GBoC5s9CCJE1dxPi+k7kiP/aF9GSEKfdcmmbFTWmKhBw3HHYpB7LEAGGdx1EE8jiT1JDpPLsZJpytDjQWN1A/AsqSGClOBjJEo5So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749571890; c=relaxed/simple;
	bh=1BNzRStuJuCtLMI5t2mvCu+fOZsUzqi0/+TpJOYURDs=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=EJvLooxfmMXTAWt1hcwOpBJfoDi8EVrHlNGli3euHP1GtoKwH55U56qWFbWTb35s7aIKsTeXlCvW1QtC97yP0VZrFlGhvPJM+AH8P1T2XUD+u3/1hOtBNZzt1QF2svgKzpeqzxZ8nXBwQTLlIKgdKS4Ng0Qzv2ubtNrYAuosL40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=G/5LuwiZ; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-55350d0eedeso5852949e87.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749571886; x=1750176686; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aKh2OR5qdf6T7y2h8KqCjomAvj3y/gMGDI6vI9RSDxA=;
        b=G/5LuwiZqr2Egg02cgWOy0pb5+w7Dbbv8fwuQ+u4EhBzCM1kbape+QgN1mByqeeh6d
         R6gyB67vWY2jekAusT3dH58P+SQRfovnLNykPb2MuWz5ZoqpTD2np7QZx30zP8Zwteb8
         5qcPhw2zP19VUzIRATqK33vIuNlflyqyMqK6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749571886; x=1750176686;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aKh2OR5qdf6T7y2h8KqCjomAvj3y/gMGDI6vI9RSDxA=;
        b=I0un6MFrrnoRMO1n/qdLEoEKvV4LZokzR22iE1qHo3xz2n3AFNlAbiu/GmzTIihJHG
         A83Qoo5clgdXG+yRcNNgAS9xTBBOJmlKgLmKO7Z+/LBGB6rFzxbGrFbjPYBu62sBtILY
         VrWmBjdUV0F2WA6dyMijGkrnEDI1PWiMRMST3ZtRMHF3kbopeJ8adP5l02Yzj4kbHGdJ
         Oe5FRwNJHraIyR1kO/ZDLfTxg0g4601+aRz7aEqvVfgUUpjnF0FndYzkvos4bZsL5WYL
         uAUOP4qD26mK11Gq27HhtuVY/Ch5r6PzP2BxOSPCM63Zj2dKVCAOIcSmH+Z0GY6jdh+e
         6zAw==
X-Forwarded-Encrypted: i=1; AJvYcCWafcEOk7+8turLAoQNUSjBg4HSGRNpfRBDSGyG+d/BCs7sLTzLjlIgcZbFBgg9wUaSH7py4uyP6S9+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/qpFgWxkL41lV55h9w4ZwhcHcriREQ9T0zx4KJJgCAUcXvXr2
	Bd50VeW6Rs+hvb3oRwfbzn5XBA5wAMTlM7bpgeuKS+6GleLaZaDkEDy4RBardfvbFE7AtIeG23a
	xhww=
X-Gm-Gg: ASbGnctQmSKzP+llUx6wuUspk9y+Uy5g8JyrjWhQcvmKhlfgpTGVOncKugv6mzpHXWA
	yrJo7p1+Dja2SxOR8nwQT2JgCVfgyx3/RkSl714i9RwY0xXIE/2neJV8kTLDKUoC3KBx5vTolGa
	N5jj2LhMUvVYdG4rtdk+Ewg720ri1LZi9AViuvCkIGfLBITvAyZYUn0c7POC1bFgsRgwNlfBxKk
	Mx4Ra88mTB7GoWDtp6+zW2TS4ejmgSLzMlIPGNRarMMLf4/QJu9rrEzxI+vjX1Bcx0isPFWRkcm
	1gFWU51WEkvBt1t//Zq52Av67eh0sYA5GpBeU0Ytw0SY6tCRf+RBmfSYZRRoHKKhc6NblG0eBMj
	d9hMEIFc39ymaqsD/BBJFqagk
X-Google-Smtp-Source: AGHT+IGwSpPiA55wiosyQqndXvH+02tieUaTu9wdm9HHThnCXazfDGBAfm99izzDwiW6i5bEagwALg==
X-Received: by 2002:a2e:b8d0:0:b0:32a:648e:7ee3 with SMTP id 38308e7fff4ca-32adfdebf26mr59762151fa.25.1749571886024;
        Tue, 10 Jun 2025 09:11:26 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1d002acsm14820271fa.100.2025.06.10.09.11.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 09:11:25 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-551efd86048so5737171e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:11:25 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU5VSJwy54OvGLvxS2xjQZszDtKeNGEOxVPz28bBUeev/razQCLi2suctWp/7PvZfkUcs0yaDv8xeez@vger.kernel.org
X-Received: by 2002:a05:6512:10cc:b0:553:2868:6364 with SMTP id
 2adb3069b0e04-5539c2260cbmr60885e87.33.1749571885275; Tue, 10 Jun 2025
 09:11:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 10 Jun 2025 18:11:11 +0200
X-Gmail-Original-Message-ID: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
X-Gm-Features: AX0GCFtzKntH5C2F9WgiD8-uFj_VhRYsX0-JS8G5smcJUQo8rG-jfzTVAngvBZU
Message-ID: <CANiDSCvB5yytOgvk1QC812x4zOBn5Z4_C5wqUnV+2hSQXKM54g@mail.gmail.com>
Subject: 6.16rc1 dts-bindings check fails
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi

Media-CI is reporting some dts binding errors:

/builds/linux-media/users/ribalda/Documentation/devicetree/bindings/crypto/marvell,orion-crypto.yaml:
properties:reg-names:items:1: 'deprecated' is not one of ['const',
'description', 'enum', 'not', 'pattern']
from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
/builds/linux-media/users/ribalda/Documentation/devicetree/bindings/pci/marvell,armada8k-pcie.example.dtb:
pcie@f2600000: interrupts: [[0], [32], [4]] is too long
from schema $id: http://devicetree.org/schemas/pci/marvell,armada8k-pcie.yaml#

When I test your  for-next tree I have the same issue:
https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/log/Documentation/devicetree/bindings/crypto?h=for-next

They do not affect media drivers so right now I am just ignoring them,
but I wanted to know if they are under your radar.


Regards!


-- 
Ricardo Ribalda

