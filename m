Return-Path: <devicetree+bounces-236171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA9AC40D51
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7D6773BD9F0
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 719E232ED33;
	Fri,  7 Nov 2025 16:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SgR9S5dN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61B532F745
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532018; cv=none; b=pWdXXoWnwfuNuOrdsHggpBpFDEX3mwGpvrXXBN0iMMSzvrDNIzF4CCMa/0UtZVjuWPmqgb59sccUFR1gPC7aqffK0khd1qEYYvZqq+2sG94Hfb46+gd7oTtiRWsv+I6ojXlblfJAwwcjNWWpgHAeH6ZbfZ4Ikd7xPId8aTAX2AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532018; c=relaxed/simple;
	bh=006rTTlryCDWfBVRjbK4RazdGrSd+IIXntBYe4RAFOk=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=Y34Q1uHeDtqhj4wyykEMJC44PfmrDInTh998mcQor66UDaN4RarNFCHif1L0cRFoqSAr3JOpZzxmtfkSzj/XUf8Uxt/b9sEktc0AI6z0EIwHxT6UW9GeJY4bYgPtSbml44KCQZLq1T4Y1Y0/zyOhm78pXtMEEJtbVIoA+xfZhV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SgR9S5dN; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-477563e28a3so6663425e9.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762532015; x=1763136815; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=c3zW5hXoAW4Cd0eifmMrG/E0EZQc4mLecW94WDy6VpY=;
        b=SgR9S5dNAyj3Z2qwxS+dQVGPHzNASd/DzXHp2N4awc+ybGEIKOlZzRzQsR7xrVoyXO
         jy0YYyBw5JbnXPkp+SqZirkiryiDUsTMkTrTu4lxXtciIN0bYYy2RQ7KlauJ6QqlxgKn
         8kI2eg1QgAR7VpK+2uWkqSpB3g33gqOjPH79KeObWyLHh1e73oJ++HfJSlBGbqhdERTt
         W74aAv8eCRLprNNswnZV2WYvEvvczgaO0SDLnZdZQ2ishZV+qqWbxDDqMVbi868rHkpP
         kXsdy78rKth05Guf5KX9pxZ490dh7q++kWdpJgmvAE1QfDlBWPlpUJyo6/79fQYj3bGd
         4mEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762532015; x=1763136815;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c3zW5hXoAW4Cd0eifmMrG/E0EZQc4mLecW94WDy6VpY=;
        b=ZYLd+EgT1JixYMX7BRL/zRSOpGBN/bPRchrqWVEsNcJwIQwWdJsc0ooQByrbHGTWNv
         sHStbHQBhdZbMB4/mq325ywtcgENBC8rZAvuJaqFvjx1In2HjnoWTEOvgaUe36Jx75yz
         ioLCPH/6mnme3uhjlljex3S33AX0cRsDo0huK1MlrhKDwUAnFjfPXMpPePFVrJqdQZVS
         P+w3DX/Xj+fOLmLoSb7rBHAH9xgznpssP8xxnj/L873/hwVvnuoq4jDTeAhl9SaFua9j
         /YVIYLUvtyjRkATB9nUrnYlNddSwp1UQ0aK/7KobKL6p/+SiiRy6/TCS8X4RJ2IoHEHY
         Hqig==
X-Forwarded-Encrypted: i=1; AJvYcCVKcJinExHOHBocwKDR+8JG5XCJVCObf+nXPrEAm6M/FfqqVuD6is8wEzoEzp6iOfZAQ7fp07igfGar@vger.kernel.org
X-Gm-Message-State: AOJu0YweZPeigwZJmVo9GqaUoKh/RL8pUwijCxfd8DK0Rm+wf57JCngS
	Y1zsE++TF65Dg5iJLOAUncmvp2KCrWjgAVbcboUL8gqPsluf0kCrHbnM1S89FA==
X-Gm-Gg: ASbGncvRN/jyCBhZrzkWuCAf1EA9FHtBkE+bY5bACvMayP2HjMAPSMTyARKx4Dlr4G3
	UjRbQcw1sVrx/OVF0zP1NI+jI42URpYeFU6vKMiynSa2D4xyVVRJpE+m3/S11VQaDkynkcJ+EMf
	rx7eWda8YXha7HTe6A1wWHKXIjbU4d6JawoT+qAu4AJcEiPU0zI7JbWZieQhhxbSvKMvOWpyxHW
	PlfgYIcwtmihHUIQZ5FOmDcoV2ihc9rBGVzEkf84PL2wnP4NHmNGFtX4fTpMQ3C3+hecDJZTCzp
	yJ4w7GAFBlGK9/q5+VMST/r8Z1jf3s3+mg+hxbF04SwlxSM9D7xt7p0O+9z4HW6Le6KOlfnunzA
	BGN5lkE+BbTlNQ4FTIlAjpmQUSygBJQ89Nywdrc02iYAuu5sWVwxYLKkMml9Y+lG0phzEx4COYk
	pcczMdrLu7SIFHO8s398AQoe7ICJEPJA==
X-Google-Smtp-Source: AGHT+IFzbNyw6eRdGERkyb2zGQzawSNRB0cz1vEopuvnV2L3SELsmFsbhHoyFtAiE+78OiM7x/+www==
X-Received: by 2002:a05:600c:1ca4:b0:477:4f97:cb31 with SMTP id 5b1f17b1804b1-47772dc4ed5mr149475e9.2.1762532014978;
        Fri, 07 Nov 2025 08:13:34 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4776bd087b1sm66665955e9.16.2025.11.07.08.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:13:34 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] nvmem: airoha: Add support for SMC eFUSE
Date: Fri,  7 Nov 2025 17:13:20 +0100
Message-ID: <20251107161325.2309275-1-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add simple driver to read eFUSES with SMC commands for
Airoha AN7581.

Changes v2:
- Add review tag from Rob
- Rebase on top of linux-next

Christian Marangi (2):
  dt-bindings: nvmem: airoha: add SMC eFuses schema
  nvmem: airoha: Add support for SMC eFUSE

 .../bindings/nvmem/airoha,smc-efuses.yaml     |  65 ++++++++++
 drivers/nvmem/Kconfig                         |  13 ++
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/airoha-smc-efuses.c             | 118 ++++++++++++++++++
 4 files changed, 198 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml
 create mode 100644 drivers/nvmem/airoha-smc-efuses.c

-- 
2.51.0


