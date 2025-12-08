Return-Path: <devicetree+bounces-245238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9528CADA95
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 16:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64D9D30062FD
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 15:50:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C308F243964;
	Mon,  8 Dec 2025 15:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gXvnbqKy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608E2773E9
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 15:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765209030; cv=none; b=icoqlLGLw0cRX/HI44F4t3f28oCEgim+5JRhKFT7bbYqq8L7VZ6mPmdNMItbcWLifCiDiAtEUYVxXIHdQMTSwUZkBoCPfpafntIK/zs39b9DLYk1Lap5AbCxqNSwNzfKLtntxyvoM3yOqktIxpRtOlxE164YYWvzQ0XrnsfFP18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765209030; c=relaxed/simple;
	bh=tlOo9dyRdPpU5qGbPx+r7yc55urEIGakEuFBzxg6tNY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=tDVnGS17NHIGEoQyEjW11C6KE0+M4ua6TJPh36nAwEFTw8JDFzXE7MC8I0b+48JLRjJvNW9QaFDStjPBu4+ZrQLztVYIpeQWGzmZf7AXI894s2CMbLgDQOUe1jQstLlqhRaXW6QI7aPbYIoipXGEZKUVKPx3JKA22iQZlg+3vhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gXvnbqKy; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-477aa218f20so29756005e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765209027; x=1765813827; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0DkeTPkNVXLcIqrE0+vJuuPcS/1UnLmUfSY7lOiFDo8=;
        b=gXvnbqKyUgjEfClf2bKPQCLEvgkqIa1gDIGeQVGkrimnD2w3f+YAYfHVwcI2Gf4ynW
         bkVzN0qjPpn2ugDxKbXNWdG2vuvMIDAx8JkixwkeL6EZBAjceyrFsojuK/atAcOq2v97
         zYHMAIlQORMbubnjnHl+gI8cR4aZKoo3rzO8YA+291NXbEOb6CIYIL9mLFF5Pc8wLHzE
         TATeA87HItsHbXyP/bfx3B3UrfmuXLDc/XzATlVri3OYbcT7uAzV9My7IMWFQjm/wFwv
         6LzDgX7ap1rBsaGYo92ZxmGpvLE21Wc7qLhbNMZqdikIOkeTuS8PeeiCCl29aWtk9V/X
         EEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765209027; x=1765813827;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0DkeTPkNVXLcIqrE0+vJuuPcS/1UnLmUfSY7lOiFDo8=;
        b=WxU/mVrGs7iqq00NvXt5EBvR6rYfttQcKveWDKybd7ikNJL1eZnIb73mGa63aQCPuY
         +1E13vLpVG8yaF5v0OTkI3yE8Atq2lESnRpOpUTECPQyleKz3cDzUkjcW+IK90FUXEFP
         myFDktsPecyplc1D6sMMxr+NacJut4NKwIHwoIR00aZAhgOh//MbbCQG2GmJzt8AIaOK
         BuVy7pRcoFwBZ3VmID69gvCS7d6fm/miFUK8HtlhR0jwSfFlJis081+/MRzWRxrRVyeH
         8VC5yCGTZHE6AybMlCLo0KaAEHdt3kKLj4QgZyRXZhC9jgzARUl/p6zvy3B09kRZELSH
         EZdA==
X-Forwarded-Encrypted: i=1; AJvYcCXkph2yedgTIMH3kok/5j+HTDmN35jXWvrqn1sslo8shBn+SELgmxJjnJMvkvBZqjjBc2tU9qTo86bU@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsn4izC8wEuR897k1Z8hvYOi5BkvHCM/5FPntpHL/dNJMsbqos
	VM85Y6sgJ9oXMEPet0HQdByOIIYWBdPFOr+jeNIzd/EQ+r6Iq4q9UG20
X-Gm-Gg: ASbGnctrFWH3sJuOi6/kn1iPEfq8xMZnV8+n+m2+BwdrHyJn5qM4FUwnWGh3Qal+I5j
	SVN50R625R2LhUKuaE8jG5DIpAVaaZaFFosooMN8NgCMWjBeXMU2Viige2B5usfFZl905W3nvkB
	NSuGPPBOhCxBKNLokOLyjVyHHoUuFwbtB2fY3STpw2zc1gRC7Z9HSoS9cA1TKNkPDoOYmuDefn6
	NiPTLl0jFXwD+NU4sIPVEe5l25CI7NspM43zc51xBwJ2uV6IbC1WI006nHi4TtLxP1+l0xZPDnk
	xRG3atXRWkTXIA4ZCbUDYgUNtJH7r9yvzStsaEZohjro8hHNC+O6zxHUw8MZhYSuvY5vpeLn0cp
	4XnZxisugS+/F6Brx49U9yWDCXr4/L9pZnHfRT9cPjYETIlGd3bxGLrnN2WajUCwsrBqy7mQww8
	0AxfNRT9DwOKiFpTaQbD00vhM+913VUCoTDQ==
X-Google-Smtp-Source: AGHT+IGcN/kfIKnH8UEIcRMeENYQps70OLTJ0JNHqdRe30a1VCk8EhGuR6GFWFzu2Ojxaxr9I9XRIQ==
X-Received: by 2002:a05:600c:468a:b0:477:9f34:17b8 with SMTP id 5b1f17b1804b1-47939df129emr76804815e9.1.1765209027313;
        Mon, 08 Dec 2025 07:50:27 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:9aa6:8a23:82c5:2b7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4792b150878sm147717845e9.3.2025.12.08.07.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 07:50:26 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 0/2] Add support for TI TCAN1046 CAN transceiver
Date: Mon,  8 Dec 2025 15:50:17 +0000
Message-ID: <20251208155019.136076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This patch series adds support for the TI TCAN1046 automotive CAN
transceiver. The TCAN1046 provides dual high-speed CAN channels and
includes STB1/2 control lines.

Cheers,
Prabhakar

Lad Prabhakar (2):
  dt-bindings: phy: ti,tcan104x-can: Document TI TCAN1046
  phy: phy-can-transceiver: Add support for TI TCAN1046

 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml | 5 ++++-
 drivers/phy/phy-can-transceiver.c                          | 4 ++++
 2 files changed, 8 insertions(+), 1 deletion(-)

-- 
2.52.0


