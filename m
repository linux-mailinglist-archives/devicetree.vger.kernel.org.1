Return-Path: <devicetree+bounces-160692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC90A70ACB
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 20:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE549188EB5A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 19:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5348E1FC0F0;
	Tue, 25 Mar 2025 19:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bg2A7JG7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7C81FCCEC
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 19:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742932325; cv=none; b=mTEsbzg1mLpBgPd9P0dEkNqCLvxcajZsbGx8ggDV2EWpI+9xeUEwZV3sjAwkJiJuS93ixvjebUZrxhXHzgVB0+ziJ79XTxrxBL2azbCM+aV2EtArAzxrGf51dSRzrdQtYR05Z7Nq0y38BrPM9mYLorMXeeVIdziaNCdbKFzbMho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742932325; c=relaxed/simple;
	bh=rpnBFeKMUHPxh10v+qPlPanGjKzMAEIZEgfX/ExARCo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YKPk03fRFpXtd7lLtIA6lPqAwbHGux5YQuugJXTiMB+tm5QGqhBQMgikpVHWaOSCAb3BZWTQdwZJEQYxRfSOkL/KLZtBDkubLJgeap51Nf5P4jJYm5eEeL+iPsJxl1o6OMgxYWpQEenkA9OlyOX1koV0DCr0qFhdcfiPDqLEkas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bg2A7JG7; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1742932322;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EI7ofptYS3imrZOUBfDtDPrG5GfjZrzOydWa8JIhV/s=;
	b=bg2A7JG7iZTQs/OaCChyog1H0jsl+uFxnKLaKxmVGLqZej9rDJ90d9FH938gmq/eLyd2c6
	cwR46emdYkD1Jy5HI6nky/Z5YwCx+ZBkbI/mMZ7TFbndDOA9kaBn9rZwi8MrdADWRUKZ+L
	q9wVnSwfLsFsQ9s2qBTiBFOxyxb4PgA=
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-262-lv9_j2QoPSyy-sMNu23O6A-1; Tue,
 25 Mar 2025 15:51:58 -0400
X-MC-Unique: lv9_j2QoPSyy-sMNu23O6A-1
X-Mimecast-MFC-AGG-ID: lv9_j2QoPSyy-sMNu23O6A_1742932317
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 365E5180025F;
	Tue, 25 Mar 2025 19:51:56 +0000 (UTC)
Received: from puchatek.local (unknown [10.44.33.225])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 6D3E819560AD;
	Tue, 25 Mar 2025 19:51:51 +0000 (UTC)
From: Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
Subject: [PATCH 0/2] Enable HDMI features on NanoPC-T6
Date: Tue, 25 Mar 2025 20:51:45 +0100
Message-Id: <20250325-nanopc-t6-hdmi-v1-0-299a2ed45878@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFEJ42cC/x3MQQqAIBBA0avIrBsoRYmuEi3MppxFJhoRiHdPW
 r7F/wUyJaYMkyiQ6OHMV2gYOgHO23AQ8tYMspe6V1JjsOGKDm+DfjsZLZFyyoy7diu0KCba+f2
 H81LrB+C2lkFgAAAA
X-Change-ID: 20250325-nanopc-t6-hdmi-aee3c368f5cb
To: linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Johan Jonker <jbx6244@gmail.com>, 
 Rick Wertenbroek <rick.wertenbroek@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Marcin Juszkiewicz <mjuszkiewicz@redhat.com>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40

This patchset follows other SBCs and enables second HDMI output and then
enables HDMI audio on both ports.

Tested with 1920x1080@60 and 3440x1440@60 displays. Worked nice, audio
played on both monitors.

Would be nice to have an option for more than 60Hz (larger screen can do
75Hz) but I assume that this will come one day.

Signed-off-by: Marcin Juszkiewicz <mjuszkiewicz@redhat.com>

---
Marcin Juszkiewicz (2):
      arm64: dts: rockchip: enable HDMI1 on FriendlyElec NanoPC-T6
      arm64: dts: rockchip: enable HDMI sound on FriendlyElec NanoPC-T6

 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 54 ++++++++++++++++++++++
 1 file changed, 54 insertions(+)
---
base-commit: eb4bc4b07f66f01618d9cb1aa4eaef59b1188415
change-id: 20250325-nanopc-t6-hdmi-aee3c368f5cb

Best regards,
-- 
Marcin Juszkiewicz <mjuszkiewicz@redhat.com>


