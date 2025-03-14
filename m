Return-Path: <devicetree+bounces-157497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CB7A60CEE
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 10:17:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CFD9819C5EA2
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:17:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80CE21EB1B5;
	Fri, 14 Mar 2025 09:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cRlSUo3E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C362019C569
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 09:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741943837; cv=none; b=Eg4Qsa+pfzfKPA7al722Xktw8NFF0NHy3CGwvXlJe+ZrUFrLmLem/VNaOOIyTUfE9/GKUo7WuWwVrE85EwpGE0F597My7kPeR9aw34rLRuqX0xdtVn1hcYsfHDb8SFOkpJ7AR/OfzF+B6riSuqgKB9KmZSMU16hANA2RyAzmOac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741943837; c=relaxed/simple;
	bh=5dhZAV9EyRZ2bVUtZeNoK2QiBwoclF/FSawk68+cTSY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iSTX34UrL+2RiOoiwoLVWAB9TK8y/+MJGZ+htTpormOSaSU4jIJjSATsfr0yPiV58qR8NuacJ7roNRNyKuBjJt/yJVz6LkpbOYIU3BwIfQUXYqLspthOLUC5I2OPdGVj97+1GPenbTCJIcJ17oympAATqQYQwxybtAY4nEY0yJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=cRlSUo3E; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac25313ea37so374874466b.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1741943833; x=1742548633; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Q1MO2zgb067YUwCn/NT4o8yXeBw8prnigLMVVoVIjxU=;
        b=cRlSUo3ExtvHvtfhqUJgS+uohe+8ubq9d39fIlVNIqE20RFGd6ncG1O+zqAyqNSdqV
         iXlHA91spkcDPUsWvzicqKI7FwZDyuoeUg0E/9WrGkeD3dPtvrRsfKGR2BHlpE2P6hoK
         nFKiO2jkGI5h+34I0sfJuPbtWyJDBIEfrE26MHVcv2ElNWy8X45BrCm4hEQxzepw1kWT
         B9oeEnht8xlBwpjCHHvnYCiryXUaScIEnsDS05bypFFqaXhZ3mGaOu/2fq3UsZfRc5PN
         8YdzOMfxD5kTIUITmecBIEOtu3DvmfSbIEUTK4ccH+3USDm/mNPguQtAweLsS3O1QxUa
         zkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741943833; x=1742548633;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q1MO2zgb067YUwCn/NT4o8yXeBw8prnigLMVVoVIjxU=;
        b=PK92fyD56/OQpdjTaB21BG7NjyD9OP/XT5psDsW07DuSMLAZB74Mp69f2f5+MgEJ4E
         XSwPL8Jr03uYl07liI+cDpcrzmvQjjWpaDcHHakAZ40BMeYP7+PEk/L83IzycbykKv7j
         sH0OVaCQleKq+aYSHEgL18+WGbPc9VaHHpnOUV84q2cGLvV4/w8mL6vHBoLOcpHDNLBT
         YHH6mdekjyOJBi0KUfg0rQm0tN6mqvdukbUVG+ysPJTfifE8h05MBnsrQO4FEctMwJGd
         VEh8avKkp+HdYjQkXawFCyHKro3Cwlz6bpcoPPoqSrPlO9r/aHaLy48H03m29A6McTiR
         0C0g==
X-Forwarded-Encrypted: i=1; AJvYcCUnZTVkMtkiR1neMy+8oAgGqW1R57EhGBw8j7a7h+exTCZnR0qWA7S+eIHTVWh0iay7B8TFvhEIp9vW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4+AxxqST9zmZ88uYF0ig9WJXPkirHKrcssXuIYZSneQDNrNU9
	UoPwCuoYsrDqJihI/eUSR/dXebYVVdqLfLU7cBB3w6OpEpthjROx788/W++0bR8=
X-Gm-Gg: ASbGncu/YCy6t+2tqDi1wX0F2Omq4t+eygIMzhd2R1+/9VQz3O4t6r/BaMMVcqzc42t
	gUpP2t4vOEpZqNMxRyu7VsOvEjWkvXAG3vlcJch9r3So7/GDN3GsCbMlsBsC+3BE2Z679jUHPGy
	Zf1Tk4WsvN4BwhE/1oWq46k1Nl3g+cNK4ndN5T+2ovkX282VYtI9bp9GRRSSGBi4buZ1wN9FYL6
	RsdvBcUXxZ4fsWewGvP6WFYOkQr4iN2nsjj4LjYgDbmwbN0Caj6b5ZsTgx1+zLxScW03MODmtE2
	/00mk8HZDRRI3+u8VZDytgF+ztahH9TR/pTF5wRYESFQQvwzFGt4kh0QicuRRxIGsF+XZAYpQuh
	1yeJP7I4cm5Uq5LB7fg==
X-Google-Smtp-Source: AGHT+IEsuY5B/NS2S21Sb19Nfa4GPRSr39x8zR8AnIVtNQ6bdJMlUrRQM/Etqzact+Gzgp81scA8Fw==
X-Received: by 2002:a17:907:2cc5:b0:ac1:e1d8:997c with SMTP id a640c23a62f3a-ac3302755d0mr184197166b.31.1741943833036;
        Fri, 14 Mar 2025 02:17:13 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aeadbsm195582166b.29.2025.03.14.02.17.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 02:17:12 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Fixes/improvements for SM6350 UFS
Date: Fri, 14 Mar 2025 10:17:01 +0100
Message-Id: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA3002cC/x3MMQqAMAxA0atIZgPVGkGvIg5SU81glUZFkN7d4
 viG/19QjsIKffFC5FtU9pBRlQW4dQoLo8zZUJuajK0a1K21ZPDyiucqYVEk62jmzrMjhtwdkb0
 8/3MYU/oAv4GiMWMAAAA=
X-Change-ID: 20250314-sm6350-ufs-things-53c5de9fec5e
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, stable@vger.kernel.org
X-Mailer: b4 0.14.2

Fix the order of the freq-table-hz property, then convert to OPP tables
and add interconnect support for UFS for the SM6350 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      arm64: dts: qcom: sm6350: Fix wrong order of freq-table-hz for UFS
      arm64: dts: qcom: sm6350: Add OPP table support to UFSHC
      arm64: dts: qcom: sm6350: Add interconnect support to UFS

 arch/arm64/boot/dts/qcom/sm6350.dtsi | 49 ++++++++++++++++++++++++++++--------
 1 file changed, 39 insertions(+), 10 deletions(-)
---
base-commit: eea255893718268e1ab852fb52f70c613d109b99
change-id: 20250314-sm6350-ufs-things-53c5de9fec5e

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


