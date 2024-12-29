Return-Path: <devicetree+bounces-134595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D27A9FE035
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 19:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 05DAC3A1A58
	for <lists+devicetree@lfdr.de>; Sun, 29 Dec 2024 18:43:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97EBB194094;
	Sun, 29 Dec 2024 18:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cD/Pu/n0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4C01172A
	for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735497835; cv=none; b=LD4byQD7Uw6mFM6sv5VKA55S9ObjEJWmDRevP7BbFrAPZzvmfIzt/ZW03IAZTidIvpBXE2NqiB10j6Rbf6PuSUFgxv3Ugczen+/zjS0GHVlGvPgMr5MGpOXjwv/To/ykg5xoBlGQiRPQM7iSB7JAGmuBfs6iDPic3u0dfyVJfnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735497835; c=relaxed/simple;
	bh=u+EdG5AVyHNwIiF9DcSDNXkkUaDpmSGr2w5UNQ4/SUQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bGxz3o2u2c8rDZYoyvO5sAeDp5dmwMyCOsNQCWYQT+EMEz54K9W2ZVNfkyuQs7sH5vjuw7h8VXcEBFyRt02EJhHuEzhZ7BrP/0U8TvVTy8DPYfAyry4YhzmO0EpPL2gYDoXwGtINM0cZtoyLwy7TRWeyCEFcloDpYUNvWy5ZcxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cD/Pu/n0; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-71e15717a2dso4677389a34.3
        for <devicetree@vger.kernel.org>; Sun, 29 Dec 2024 10:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497833; x=1736102633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u+EdG5AVyHNwIiF9DcSDNXkkUaDpmSGr2w5UNQ4/SUQ=;
        b=cD/Pu/n0t/mr5Rq4QQORFb6u/rVrYb35hzSqPlhiGiO2Ih2HWRMq4Xl90XwdooVBiS
         9c+ANFmLCCX9VxEvmOFW7egpYqLguvmMBMwZhwlRVcejOjqfG0CJZz/gntQIhxpmTRXG
         poRcyECUOes/FnIc5xEJL/SX9VbKG/JKiHuMcSBwiJFBuN7QMG2VtcutDIq1wqjFZt+V
         3oKq9dAArAoCEYkyJY80dCWgzbcqk28mvQwNITkfhm1oiYSY0CHul+8JKfAwes8RxhTD
         ZAbsvWW839oIdpuGAAarNUufOq44qBqo/+g13lpm8DpJ28OtecyUnM41guAFNNlCxzCA
         q66w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497833; x=1736102633;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u+EdG5AVyHNwIiF9DcSDNXkkUaDpmSGr2w5UNQ4/SUQ=;
        b=dv05yOd6F1LBW7BQBdETo7+XWDnYrk4xGRjOZPQPv11HOjVd34+9k41kw2D/HIqoEC
         l9HrHX44tGZOFH8t1acdQ1VIxj76L5izB0iy64mSQMsCxW8JnZWXCEVYhOQFXJBPz7gr
         jzNn7GfoloeMbK/e+TwDyNR19qMJTj5xJ0dVdTYK20aAGQVLfmWYbgZ4WS+3N3tKUQlh
         sVO1o2ZZD2dWK1jJGimJ6Z3GYA/QeDSOi7RbrSJuqivGuhtrpVEKz09RV4JN3x8K12b7
         Ied0B6lL0hUggESYukQw98FRp2rlgCNNAxQVNNDSgGlbi6a0uSXaDmWztn1Qgj3pD+uZ
         bG3A==
X-Forwarded-Encrypted: i=1; AJvYcCVwXUWzSCuCphCWdJwFaL9snjLAhNoyEebHtEcFRBKb0iXYdsb1MT9YRQrd6ixnIsJuH8kfY20o629F@vger.kernel.org
X-Gm-Message-State: AOJu0YxFd0WeCNNBfV+S+cU+9oY9a3gBIKPirscG8NG8NeeOvbunTCnj
	XXy3DiqAhfWH46wgrM6lP4m26zqvQ1lUJf24hq2Us4dRJVomjELQ
X-Gm-Gg: ASbGncu25pqmbTM4C8HGDi2NZ4RSNB+MwAHHVd19uZ0fPV1tIaj3iluvQ0N4ePl6XvM
	uoKepLhzGrYAw8Z6R5eLlmU0KrIEKKalCSgD+tLTtDficxLa1HSzEVtxChu22e3GS24oSD8aqDB
	p7St4SiitLTEUwhy+BPa/Q+ESWAMCqn2G6T6sD4Wo8rNCA8jOtIl49IVNhDik0Af2v7FhAUdtNz
	UMj2NrgLWd3t/vd5Frv83H2l4JWMNU0obrxm0jQ6UXpnawSiuVmJz++x2xuPZa6
X-Google-Smtp-Source: AGHT+IFX5tXXeMQ27jrDhnaZ0ipObtd0vNMPgxqr9NK5Gmo3CLw+ebz1oX7nKY0qSeKGYla2nBbMeQ==
X-Received: by 2002:a05:6830:6f0b:b0:71d:4b55:ae20 with SMTP id 46e09a7af769-720ff7fdde6mr22770855a34.6.1735497833186;
        Sun, 29 Dec 2024 10:43:53 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:43:51 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v4 0/7] arm64: dts: rockchip: Orange Pi 5 Max board
Date: Sun, 29 Dec 2024 12:41:25 -0600
Message-ID: <20241229184256.1870-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v4:
- Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
- Move HDMI0 from common to the board level
- Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
- Updates for the newly submitted HDMI1 support
- Add Ack for dt-binding

Changes in v3:
- Refactor to share common include with Orange Pi 5 Plus

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

