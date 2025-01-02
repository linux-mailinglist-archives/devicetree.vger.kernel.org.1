Return-Path: <devicetree+bounces-135123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4488D9FFD26
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:53:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3784F3A1426
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 17:53:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5EC3156231;
	Thu,  2 Jan 2025 17:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="QZ4yzxNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79115165EFC;
	Thu,  2 Jan 2025 17:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735840421; cv=none; b=G4fm0O5jbPdp2wFk4Z5ZUyQO0ApIUTinkzsyAcsOqXfNVwf+aNgJG6e5fmFY5D78aeFPisOwbyVE6ESZE8B1KMG5knfWs+gX6o/vAHAdKihry+/m7ZJxdAr7dcTFI/achZC2SVMCOg+YxwfLNbocVWovlEUSZn5v7ts7TyF0ix4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735840421; c=relaxed/simple;
	bh=1shpE28iBcup65YtilFuONgZy7peN3Bq8T9nkbdyquk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QQHj1znhcPcelbfF/XM0lPFJFPpzdlx0SKQZVXnoTB/J9SAoakNga0htP/kBRGZ99RMOgW7l2+Pljv2ZAblkHC+dfFQvfe7FGFMY1NhZBqauToTDkUfY+kotpJk572gaBafB4DuZR6O+MsTXdmOoJuiN/mpjiVhqrQqVXG6QUMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=QZ4yzxNU; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Date:Message-ID:To:CC:MIME-Version:Content-Transfer-Encoding:In-Reply-To:References;
	bh=QIyYY0XK8X4RY7jfK1r1XszV7ED+QH8G9tLlmp8c7ws=;
	b=QZ4yzxNU5Ljte+k4V+6PqQhqe9gjQqNffdQj+vxPekK2PIZERjd6A7dqFNGGdR3//p24psXJKY1FVjhq2ZkVyFkWZySawa7I/UJ4kgCrWDIJQFlbaZcGJV8DEQxnrxvexEyC1CHmPWeay+5Oisc1fBMpVOeLSh2P56zLlVvKf/I=
Received: from 854af3ed5e24.lan.sk100508.local (cm70-231.liwest.at [212.241.70.231])
	by mail.netcube.li with ESMTPA
	; Thu, 2 Jan 2025 18:53:37 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: Lukas Schmid <lukas.schmid@netcube.li>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: 
Date: Thu,  2 Jan 2025 17:49:58 +0000
Message-Id: <20250102175006.3675-1-lukas.schmid@netcube.li>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <32b5c286-9457-4b93-a93f-c8aff356ec10@kernel.org>
References: <32b5c286-9457-4b93-a93f-c8aff356ec10@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v2:
  Fix the devicetrees according to the dt-schema




