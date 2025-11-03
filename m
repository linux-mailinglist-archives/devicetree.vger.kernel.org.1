Return-Path: <devicetree+bounces-234268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C063BC2AC2A
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 10:35:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F0C2C3AC8E9
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 09:33:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF1012EA17D;
	Mon,  3 Nov 2025 09:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PSa7sb5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CD3720DD52
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 09:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762162405; cv=none; b=mrFK+CAt2q6F+qtoub1CsKLuruXhYRrtd+q1NOE4UchpaT6nmXQClFO1pGRCNXb5SUcYCPVaYRqx9icnkzPNNB9/yqAhAxkQ1f+fJAYT5lYaXflEThyMksavUuFGjKng+8WxHQq7EonhOV8iwqFpLtXukpMsMidcewL4YLljxtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762162405; c=relaxed/simple;
	bh=c1A0QWUdxkJKpRTlrVIzDoZpeSzx2x/Os/6OQGH0TtQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NnCnq6UPnemK6a981sUsp+q5F3OAWsR5ZJZIxrdC9qmiYE/BL+Qeduqth0Xg/417rQa+mJNZLrcR1rOdVNYrYP9ru3C4UrVM5dHtWQoDrwP6/Ycnq/z3ZUCThkh/jlAdtGDRV0HwaW8aibt8IEXGPO9iKlz20n5Dti6BX4f1p/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PSa7sb5C; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-29599f08202so12399595ad.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 01:33:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762162404; x=1762767204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fi7edW2fKbyqZ3kHK/AlGvcaMEfMr3O/Cmh61+xdw30=;
        b=PSa7sb5CBWAn8It+shTtlOR4Q8S1+W3sumQI1DqXLvo1uqtOJH9TY1iaBEtjOMreXc
         LaJ4TIxhzrx18P5cMBRV9g9lw6kHUaxO3TuX3FF28js8E5Cemkvt9LppHDvH1gxRbPtg
         2AZ81LuWZMvic7uSj673VPxFWjYUzFK+Zi2QIfziMrGvoitxBWIKz4OaqjgVht7VmsBy
         5n68vRLa73g3lFqNDwE9egiRtAF9qK01T5o8gS0vdz2k+kY/gFFFgcxe6rn3ecLME0iK
         Wn6C0y4pZeBvZkdxjU/cD8W6puvMfnTgubfXH9vtwOJuIq01ZD3wTE0AA200DXM693tK
         ORyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762162404; x=1762767204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fi7edW2fKbyqZ3kHK/AlGvcaMEfMr3O/Cmh61+xdw30=;
        b=ZG5ugYtwq9xBUf+D1E0+ha7jWcKRtAwB0ip0QiCYFyBqRvdNwlyWfE5VnY4KAwP4eL
         k89/ikeiTGVnDzvJ/9Dpudun1x7C9Ec9wzvdkPg120dUew6s+J1GA9EKu7tj0rcqNfrK
         C07+cn6m8ZSTs3fkxLuTXxEbY7GvtngPx9FynVhbh7amATPsbkGVnLzQSHRx4TGF+7Fk
         df2YqTkUy4nYpmp9HW4hw4BWZ0kAknFfoquAb7r73D7djvSLarUFwGDSFVvXZL3RFDZ3
         0JXvK8btf7OVVLPTY5JVcqLr+7KIyWnKd+VYMqtyVinsI3q7llptTaXvW8RPMe3T08zx
         WxEw==
X-Forwarded-Encrypted: i=1; AJvYcCXHaDDLFq8b0tGlU1zmBr5o79jazyub2E7SiKx0MyydJRZ0BHO2wHeKMLBVlF4li/zZ24z1dz/hx/50@vger.kernel.org
X-Gm-Message-State: AOJu0YzBJDiHrAUKDovereKsb6laRr6Vpx4X3ZMRJYyQjq9l/oE62wMW
	y3S8JEG+TPTamPgk/jp38X07LSX4PDuRVraLpqowEFX1Rj4Fv17tBj+m
X-Gm-Gg: ASbGnctFq2n4D4ZdrAp79z+08YzmxFqhm7ZsDX9O/790laq1fcpq7xnOA4sR3Wkv52d
	MzczPicBwIgSedKiJpizHX0Gqsv/KoAE7dsxe7tDNu6KOzPdi7wpJL6rxDaMyk/XJ8S4e+RRIUQ
	p6hkJNQXMiSD2GE9OyyK4eJEe/ARjQvXV7SBCwAeXTkpltuPjQd77wWB9dx9yF0rwAS3ms6zhOg
	LfgRsTgtmulqX7qLSdJKM1FaiVK8PrRt943KjMphoDQHxEOeZdam64zVom30jZdoW5wNXWknz4f
	M4Q5O6WihcsJv9zuHZYl4OMoj/LLIATzey9ScjNXVWkqTXf+QcJO8UeKOcH6zvA5DqkkrGvr4dF
	/2rFUNT2VcZJwjcRu8iG2AdlA88w+bqugv4T9R9vEMInryWk7RnPpIoVO1vZog2pl/Ax0Bw==
X-Google-Smtp-Source: AGHT+IEhVI8HLKKsPHJmLdcgQIX3NyE6Qj62NyZlp0rKKc1HR0bkXg6Og36M1Mf5WeEiO70N6uA3uA==
X-Received: by 2002:a17:903:11c3:b0:290:c5e5:4d90 with SMTP id d9443c01a7336-2951a524561mr137993865ad.42.1762162403672;
        Mon, 03 Nov 2025 01:33:23 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2952696ea51sm112351435ad.57.2025.11.03.01.33.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 01:33:23 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
X-Google-Original-From: Peter Shen <peter.shen@amd.com>
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	peter.shen@amd.com
Subject: [PATCH v3 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Mon,  3 Nov 2025 17:33:18 +0800
Message-Id: <20251103093320.1392256-1-peter.shen@amd.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds Device Tree support for the Facebook Anacapa BMC 
platform, which uses the Aspeed AST2600 SoC.

Patch 1/2: Adds the compatible string to the Device Tree bindings.
Patch 2/2: Adds the initial Device Tree source file.

The Anacapa BMC is based on the Aspeed AST2600 and includes the standard 
peripherals required for BMC operation.

---

Changes in v3:
- Rebased onto the latest upstream kernel tree (Linux 6.18-rc4).
- **Fixed all indentations from spaces to tabs to comply with the kernel coding style.**
- **Updated the Device Tree Source (DTS) content based on review feedback.**
- Resent as pure plain text using git send-email with --thread option to fix broken threading and corporate HTML issues from the previous submission.

Thanks,
Peter Shen

