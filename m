Return-Path: <devicetree+bounces-216265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 008C1B5434A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 08:52:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEEB23A4D9C
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 06:52:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2657528C841;
	Fri, 12 Sep 2025 06:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CpNfUPyh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA142874F2
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 06:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757659932; cv=none; b=RLjRfULsiUz6iiDG+0pieH407Qz6LiO9a8s7hXszOpQbJTnN0Xi3fzBnAUvXcDh81oUCUquRDeBxiML5zzeTF2xJAoqxS8612LgVXWM5+3Kqd87LznDLX7UaNEwhSnOsqS7ZZb0bPq97BGNxcnLzoIzr9pHN+y8O136CThrIqt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757659932; c=relaxed/simple;
	bh=4jsSkRx+IjEMBxPTsR02v2orYmAPSIB2nNu/YIBdHao=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=eKwvNaUge2uf+DbgvGDIyHxc6QH03MrXqwD9NVsdix+swYr6cmwEV0c5RS6aV1DwxSbvOd7GinpR1sbo/RG6+usgUufCey8qbj+MSjl8IhBspA4zLaGFtiL6RkIsez9ZhoWedQtjsq8vBXS3qLvJEf73RrQ7AxHafC9GZQPOWxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CpNfUPyh; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-33730e1cda7so14602731fa.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 23:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757659928; x=1758264728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BTTBebWWhXN3M2UYO9CY59G3Xi/GF94b78s/3/RA3Mg=;
        b=CpNfUPyhhyanYu4ycDhEVbUrnsOVmbilCx4r++UUMg4Wzm/MkaCPiD5M+kcZ7QvME9
         31y5R3rgMi27zgT2qCik+Dyq6+lAPKCBTMrqlA0yw/6Z0lUdtQRhJr6X5PByV7AtJoA+
         3Wc5iFJhAXi2ipPSA5/OuG4/U7CsO4uZKf0aKI/o5WR/jHQ9pwwH3WFl43EN7oJhRHdo
         Py0BFrZBaRKuWE5etJuyKl7ROAcDdjGIGW8m/+6TysKf22pMB2HUrfrXwqtOK/Zkp7Sy
         WLBsmrXZoTOqWv/J5UANZ2Dm44WcbS8WXq9nmnCfGMj+nc3Zg9xiWoPR0chAGe6hZLM4
         lZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757659928; x=1758264728;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTTBebWWhXN3M2UYO9CY59G3Xi/GF94b78s/3/RA3Mg=;
        b=u+cP+ulRt9TJlKIdyv5LU91pJTEvJl/e4uZOa/UAMqrtBVD766NXssk2SCggFwtuH5
         T2JPERB+o2oT5NZRLjJl1Dlsq1Jmanjvxobv2fYc+O+nrx4HeJPQkh1W/nMZhl3jqWxo
         sByc2sqB98dEh4MDDxg5oaJes8JssZjvfpFsWBg7mWstlj/N0zq4Lwu1QvtcG0rKSgYj
         AoRyYGyW20WbwdSXvktae0WwzYvQt6y8pUEIPnhe5fAPJP475b8cZNOQZYZBEladokKn
         /R68OGJ6+zVKYHSK22apI3wwDT6hzWCj8PU+y1hqiL8z62MDOLji081Rz+i/ZGF0gD4T
         UHVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdBSQWp5stoFoNuoKqMisPnCBHKgwX7VSR7kX7P+M08BhAxhhaZRRVv4lH5gyR9+s7FOyjePCXuivP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy70N/X1+m7OE3q0sSvCSMwXpTD4HF2/UHxf2NPT8WEW/D4PUzW
	pYSkZDtSyfSCn+rWGnDZ07hmQu3DhW483fpnzmeu1FjhZQoEuGyZUzp0
X-Gm-Gg: ASbGncuoZtexTvjVYONrH5qewPywc/QvzngHR7jAx0aZq9TA8kzv7Ech+Mqu4f72k7Z
	5MAk6ZDG/Y2SakIJq7+ueljZNyayxYUm5L6Fpv9wuH2amyZWZ+9tjtzWZMDUuRHRCOWijry6a7X
	DnFeRZ1fkDN6FxWizaF0khJhOuQWdrbz7jezqIYz34wiT1Nqq6kZI15h6gGmnkH+MzaNWF5OUlT
	Bq/6u8GtKi7XWyNyUkI9glcD/lMblSZpevyfRCvIRo7w4XA3m0nYVXdu8JyzY+jVWnAOypfnr3m
	aejnuQg1QMJXtCSPs+xOCzsVuVhvwNlwrHksfeMwTHwuqZ8qUJVm57uhI20VwojjH04vhNEZf/j
	2uEOC9SFHD/UIYQ==
X-Google-Smtp-Source: AGHT+IHbStwX8UvTaaxauHpx4VlCk3zXqkxaVM6ehQuMNCkmsiivpfkznPcjNjP44Z0KKwun2cLt5w==
X-Received: by 2002:a05:651c:3543:20b0:336:6c93:9726 with SMTP id 38308e7fff4ca-35138cfbec6mr3457941fa.4.1757659928149;
        Thu, 11 Sep 2025 23:52:08 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1c5d5a49sm7180351fa.66.2025.09.11.23.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 23:52:07 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/1] dt-bindings: power: supply: bq24190: document charge enable pin
Date: Fri, 12 Sep 2025 09:51:45 +0300
Message-ID: <20250912065146.28059-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document active low Charge Enable pin. Battery charging is enabled when
REG01[5:4] = 01 and CE pin = Low. CE pin must be pulled high or low.

Svyatoslav Ryhel (1):
  dt-bindings: power: supply: bq24190: document charge enable pin

 Documentation/devicetree/bindings/power/supply/bq24190.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

-- 
2.48.1


