Return-Path: <devicetree+bounces-139906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 509EDA17838
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 08:06:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A0781884C54
	for <lists+devicetree@lfdr.de>; Tue, 21 Jan 2025 07:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A86A51B4130;
	Tue, 21 Jan 2025 06:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qd/MPQ7J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01E441B4128
	for <devicetree@vger.kernel.org>; Tue, 21 Jan 2025 06:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737442686; cv=none; b=f0c7D9Uny55eHEbT9q7z54r9l26N8W0VeLTfx6nwen1TyHpBK7XbnvuB4JBL7B5vDEUBMruTIy6todE92sfGW3t/fX6/Wufxw3EfPyqt7tMPuQQFpK3DwjnPPOGo7yK1qhLPg+8uj7jzeKCd/3KWspuAikUj0DoeUWDliQ9zvZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737442686; c=relaxed/simple;
	bh=m0J32I5iX4T+msZRUZDzg0pTQh6K3HJDuWmBqKU2hcE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SjxxcjTNRZdx1zjMKtC1mYegkOvLEYFdais7Muh/7x5Xx+cgyZlan7c9dcqfEWHwAkAfLuW5++b3tEXJG14alqkhDkVYrrkzWmS8S66CWZLaJcOVP7eHI3oYnhL9o6mIpyxOMf3xkhHQHOV7jHSxOPN8MdHiSCA29TQc6G19ouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qd/MPQ7J; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-2163dc5155fso98098575ad.0
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 22:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737442684; x=1738047484; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A3xu5JQ9R+GVM+6e/1gwTysU0V3zfLiiV7TRnfZI3FY=;
        b=Qd/MPQ7JJnO+ztA/RTglX0RlaFNYMwIJXjM6+7S6I0btKHdUaf2BCI6cjTgUT15+F2
         0F+0ltlwOuBRgXuLowJlGqAu3OHaZMaAgKHCYZeTT4wP+XA265degTiUtC4StjuX/b6Y
         cxVKQsuZsKg9y7iu3/RpXd5FEmO7LHUaQ49/KDys0/6CrY7CbEuG9zSamit0zrOVikx7
         0UnLL3DL9tXED5HoAl54ur+oN1TzNnwlQyswQi/lMdaoAYyNGyj68gpqUaQcDOKHda4I
         Gt1uelvb2+H7kRX8SANmTkRvhapLcT6K4r9kNcsNAXesJgU4SRjOgvDiPuCqiyuhVb2+
         q8JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737442684; x=1738047484;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A3xu5JQ9R+GVM+6e/1gwTysU0V3zfLiiV7TRnfZI3FY=;
        b=eRuftEEaGunt82tczbrA3WZq1Ht/0s/toZ3GL3/pA98v0OUA33bTH8qz+9YeHnFNg8
         84ro6k+DU6e1LfvrnX3Of32is5vC0ZA8/fiT/aoZ8GQm85AHE93nqp/+s6XC+2Tt7CJ3
         gk88wDcOuFr6YBBTTaBsFon88dfzd6dLZ6yf3kc6nWrQwNbpoBeUZRLzpMMkEuwizp1U
         yTeF7p9clAESSLBiF1BaPpYjosou8010bUlGP87pCx/aSkLiN8khfK9dPsPFiflN2iYK
         waBRLDzeAy943wXdWLh3jOsLiooJXIYtDPQ/wk0oAQqHO051FRFaNnkymnQs1bCBW46Q
         R1uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrujPKRhFftFqoDK/UuswLqwk3u9ohhZwjfJ+6nwK+SuBIMDTzv0BHK9fXxICE0vUF55Kf8cs/5Zlp@vger.kernel.org
X-Gm-Message-State: AOJu0YyT648hEmwpkTZzEce8VEVKbGJnZ8DvIx/UKvVVRpJ8a5ng/Tp2
	jHvikX7c6tLx9oVhgKVaV1hDH57RFIJgO6cmWaTZsJj/5kXd3VVe8HyzMz2CnUY=
X-Gm-Gg: ASbGncv71Eznnnx5SdoSo2lbIuAuC9NGRb+xwDjwUHERVLKMUoHp5sfrHqlIeauB7rP
	4zndKeBnLvYEwtCo0p1u6yi5DXKBKQ//NDpIUz9LnkZhd+ZhA+pxQN7yDqrVed2ag7WVcLvFpeb
	RfQ6dDn7ewzEFqrF4mfy5bNBs5t5URRqajJ5cj2eu0NSTIPd0l24WefapNJiTVd6HKZI78KTDpP
	7e0Vfv4Efqrid5fC9edKj2S0IUUyJW1a13Dh0PTe3PprxbMQU3xZSiCj82Njd/6YzQ+ffAb
X-Google-Smtp-Source: AGHT+IHggIXrfshWR86eyattkP09dp08RiCOAso0M5+A/4htforQpyD/gbYn+xSh26G2OCtDARqWaQ==
X-Received: by 2002:a05:6a00:3487:b0:725:456e:76e with SMTP id d2e1a72fcca58-72daf94f68dmr21517724b3a.6.1737442684318;
        Mon, 20 Jan 2025 22:58:04 -0800 (PST)
Received: from localhost ([122.172.84.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab9c8d8esm8172390b3a.117.2025.01.20.22.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 22:58:03 -0800 (PST)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: Vincent Guittot <vincent.guittot@linaro.org>,
	=?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
	Bill Mills <bill.mills@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] firmware: arm_ffa: Add DT support
Date: Tue, 21 Jan 2025 12:26:37 +0530
Message-Id: <cover.1737441631.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This series proposes basic DT bindings for FFA devices, and sets up the of_node
and dma_configure() callback for the devices.

Viresh Kumar (3):
  dt-bindings: firmware: Add bindings for ARM FFA
  firmware: arm_ffa: Setup of_node for ffa devices
  firmware: arm_ffa: Provide .dma_configure()

 .../devicetree/bindings/firmware/arm,ffa.yaml | 75 +++++++++++++++++++
 drivers/firmware/arm_ffa/bus.c                | 39 ++++++++++
 2 files changed, 114 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/arm,ffa.yaml

-- 
2.31.1.272.g89b43f80a514


