Return-Path: <devicetree+bounces-167685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EFA8B5C6
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 11:43:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8996E189C120
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39FA1236A61;
	Wed, 16 Apr 2025 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="fy2/TuT8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B3422DF99
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744796571; cv=none; b=DtUlDHLJ5fofTXjX3DFIXlTIP0BgR672P1xzeq/Em1uthQ4V+PYvR2lIZ4jG5bAvndby1cIgBNGlEPCRNXELoMkl98U9zen60Mmf4nO6hlF8aDTDrRDE+nPEXVi1cMimc7VdNfrw4lyVKvzT1wFFXV8p0B77cN/PtUFdtDZtep0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744796571; c=relaxed/simple;
	bh=v6n7jILdjhbGKHuKJjta2U75MS/4ZHmGbjks7d8eyvA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R/1YqOZhrGfB7b3zO+VsI9g7VULowbDpGbodc95iiIhs8qzgY1ciZhHG4+C49DOeoeZarl3f361wFcad67HTIYV+LH673GFBntDjVkn3m9Q0WGMRq29rxHU8JOXVFM/fFmTEXOtVtFFqFCOVVeB6ZCZioEDygNXtH9PhzPucZMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=fy2/TuT8; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 683103F2E7
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 09:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1744796560;
	bh=i9ixyQFFhUHW4HMFMtkfJpGgEC202KPMs1epsc652uI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version;
	b=fy2/TuT837D9uOjqwR3OmKK1P1tjZ4VekxtrFdqLFTTn+CgjOIMhju/9uzwvtRI+1
	 kuvZzPCE/V4Aj1xn+HLjeiJli5JN4SC4ij0xERD00QgxzazXDqU+MvnHqVThmmuzsx
	 Y7YTSHAQBW0hjNuAfJIO6nsrHiv3P6Gxg+bo1lLIsbCbUhsm5xjgUcTMlAfrZeQomC
	 zfa1/nOj1YFV9qifJd+srZVDDq/nb64zs/zaWNQBLf7IOkjOUzkZJvleNqkquJeP0c
	 rZuiBjJuoS49Q4NKCAWdXipWpf76nFm88oNI6HGNCYb+nC6a8w8GaiOs8/9njnewpX
	 L7Hn4khrwHmXg==
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-ac3db5469fbso590317966b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 02:42:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744796559; x=1745401359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9ixyQFFhUHW4HMFMtkfJpGgEC202KPMs1epsc652uI=;
        b=c1wnVdypdyGNEn8Vdue7Sj4KGzNXRfQ1IO5t1/4PjphyxwM1fdiRVccemPDtL0Cj5M
         dOMGCZelqQrnETQmykZMZlpvnyhb3+pCZXYqE8riZ/muwarhNFPcz3qzUjZ7xVGYGU9p
         3ORE7RA1LYSeEanG99hfsoaIGJSXEK2Asw+fBJrxYeRDl33RIlYmEUKxtA3aQdI52YCP
         Z4foLXd799IeOXMDrQqiqysC19r6XpMySISIKu/C687b3uWkbzlzs8PhhsCSYyt1ltcO
         TXgC/A+us2PL1Ioer7/4z0WCKctEzQ3xe1K3PnyNI6q4dSLIPfNtPKO6ZqnYXkZSSvRA
         jLyQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2EeH/v5m+vFBGVjGDAkD2luROWXtBRiqAATmqiuApyi3d+YqVi2EW2mdmnEe0uSu/CIw9FskkLdGi@vger.kernel.org
X-Gm-Message-State: AOJu0YywK3WB5GrOrVTdhLn86lb7aBMJ26LZC2Wm0XYMBngomRRv/UH5
	OpbGqlmcUvw7Ts9NitwPUG8nvFOyOI5LWRphADAFirF9hIR1EsmH39n73OKvf34/t2qoPwCeGak
	brbLWRM0uT1FOQ+BdY7OovblwRBaD/V53Q3rhmKZYZezSeeKS8PWRi+oU3izzXKexZol1NoSISj
	JduR6fY6s=
X-Gm-Gg: ASbGncvKl3+eG0MyIiR9wop1GNGWkmXZD+BU/hyKxEFCpADizekV7OJnB3LjdKQ27tW
	asztycmT5i+ulxLgIfm7tepnzKuolVbomCvsJD+ld0GX89wBgrFxk5fKsfnR8ykQMSItEd43qfw
	akqNCOCYeZ6+m+6Jvt6QkU/YquaNwDMWF0ekmqZzn53IZqlq8cfbVumEw46n1Kz1faKES0Y6Dvx
	9Z8qQEeDjeAQJ08ZO9YEhjLRaYDfZuZul6btWyySoKE07NpZIgpoDjvvcgHNX/m02eTuQ0rUEUQ
	5gDdZ6CLS30JAUUpfmO53o3oIZPhOkByB1DoAIpvsNjfo1/HTgJY1BUW
X-Received: by 2002:a17:907:a42:b0:ac2:842c:8d04 with SMTP id a640c23a62f3a-acb428e0393mr105040666b.17.1744796559122;
        Wed, 16 Apr 2025 02:42:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7ls/+zecyrOEaABBTILwE0kIy3epCcGQns9JrjSqagljy01aArWTanNTW2rX4QlZq1npbDQ==
X-Received: by 2002:a17:907:a42:b0:ac2:842c:8d04 with SMTP id a640c23a62f3a-acb428e0393mr105037766b.17.1744796558467;
        Wed, 16 Apr 2025 02:42:38 -0700 (PDT)
Received: from localhost (151-243-191-194.pool.dsl-net.ch. [194.191.243.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cde04c7sm95510066b.55.2025.04.16.02.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 02:42:38 -0700 (PDT)
From: Juerg Haefliger <juerg.haefliger@canonical.com>
To: juerg.haefliger@canonical.com
Cc: andersson@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	konradybcio@kernel.org,
	krzk+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org
Subject: [PATCH v3 0/3] HP EliteBook Ultra G1q support
Date: Wed, 16 Apr 2025 11:42:33 +0200
Message-ID: <20250416094236.312079-1-juerg.haefliger@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250408145252.581060-1-juerg.haefliger@canonical.com>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support for the HP EliteBook Ultra G1q 14" AI laptop.

Based on HWINFO64 and APCI tables, it seems to be the same HW as the
HP OmniBook X 14.

v2->v3:
  - Drop status properties from nodes in patch 3/3
  - Add acked-by-krzk to patch 2/3
v1->v2:
  - Don't rename the X14 dts to dtsi and directly include the dts
  - Add a label to the sound node and use that to override the model
  - Reorder the dt doc patch before the dt usage


Juerg Haefliger (3):
  arm64: dts: qcom: x1e80100-hp-omnibook-x14: add sound label and pull
    out the model
  dt-bindings: arm: qcom: Document HP EliteBook Ultra G1q
  arm64: dts: qcom: x1e80100-hp-elitebook-ultra-g1q: DT for HP EliteBook
    Ultra G1q

 .../devicetree/bindings/arm/qcom.yaml         |  1 +
 arch/arm64/boot/dts/qcom/Makefile             |  1 +
 .../qcom/x1e80100-hp-elitebook-ultra-g1q.dts  | 30 +++++++++++++++++++
 .../dts/qcom/x1e80100-hp-omnibook-x14.dts     |  7 +++--
 drivers/firmware/qcom/qcom_scm.c              |  1 +
 5 files changed, 38 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/x1e80100-hp-elitebook-ultra-g1q.dts

-- 
2.43.0


