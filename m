Return-Path: <devicetree+bounces-140976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E3BA1CF81
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 02:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 704797A159F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 01:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 635ABB644;
	Mon, 27 Jan 2025 01:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Ogkj1gde"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53F56AAD
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:46:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737942375; cv=none; b=ZHysmohPidiV0Aj+XRI2fRp6rWCC+287tzqmQjI8fxyyZiZiucMEariwirg5GAIEXlqw0SIY2xkrX9bQQ83sb+RTBFFJxhK1+2X0wjh5K4QohSNLT0es5xXiwbaBA398IxrBLQMQSIfc10PLtqxBAPkJbb3lOvaxvg5vGNGE/WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737942375; c=relaxed/simple;
	bh=pDvIw1GDMcvGKhiaZI+KEPOVaQsUM3Gy9hVWmOu/MUY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=OOu0TBdGnwuLOA2KgYMreqY2Vn6GnoY/UTL/n5Azdkqs7DcKQgkk1y1fi7gG1RfEsK6Zt1nl9c5Eh7WpWo4L8XychOcgpH5DfuLw314zMrai3khfDLtc568k/V4PJB2L9otz1jqoBJnr7xwnRg3Gt1PK37A5QKZcWcPT5NsKc6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Ogkj1gde; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21644aca3a0so90976005ad.3
        for <devicetree@vger.kernel.org>; Sun, 26 Jan 2025 17:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1737942373; x=1738547173; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5RsY0FJYh8Mg72JGIAX2jOiKQUfY87RZcqUfL58/Txk=;
        b=Ogkj1gdekl44O391Qc/FATU9DfufyqkiIizzTq8Ux0uJCRqFSyq/bcOisEOxkrh7Er
         eE33C+bKelG1ihs5nJMfA3jePP2bRjs+xGbLbp2tRb2fSar10nnW6ECf+V7EnpvTos6Q
         b3yhk+E8BntPpdor8OA+Vc7pox8NwKV7CyN+ICrpTlHfEqX2+ixEuOo+PSignnt0Hnnx
         qI4OBeQ/S2WCz/EkpuccaLd9tqObo2+6zFiUHVFW+L0mJayzit5ldJKZOICok4Zw9B+u
         GfZGa/ZNQfkLYaQfB4imz+l0nXK58sVTUUsHjkTks0MlEk6YQJ+xq0qTVvEQcbpySocq
         xaUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737942373; x=1738547173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5RsY0FJYh8Mg72JGIAX2jOiKQUfY87RZcqUfL58/Txk=;
        b=KEyGY5uAfH/+yaMrAfRFRIanjGhtDWkWhEWC/KwitLxeUNDMKIT7g1vAeMS1LWOzoZ
         ZluvgLxP4fB5uyguUKH4DnWWGEEPwdWiQmNhts95JCUU/0y30HXp3+y8chiyyeYk8s1s
         xqOXeLerk3zxyAmVEQZa2MoalEu1qGaD1ug+/ODajPTZ0K4f+sAg7J9I21kuuTwzZuwK
         v5D3Sqa+w1Ff283LCwwXiSiZyslIyxBtiXxiGdivNNXT+xBVILeHMrSbZ5Drfl/+L6AD
         Av2l+TKxOteb1C7h4RZ9nIU+2mZ2aN1PUo75AMVyb6UKCITKbefBd89yPv66vGAaNdC0
         /obA==
X-Forwarded-Encrypted: i=1; AJvYcCUNoGOODMp4nR/Z9uBrTXX2SL1gPOaY0v4IVvXb8oSSVJFgTghlVgM1osF9Halpx+NO2UHrFidm0eBo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1LA6QfT8F5Z8LSUligoMcsXdqWg325Wll08fUZpM52Lbru/8l
	lHATV2j7fzn7B+P+GdF+Lensbed98SI+Pn4tCzQwbsmXvgkkAVFL8FHBpZ7TziI=
X-Gm-Gg: ASbGnctYfnZTzqLCQgw+/GQYZwmc3kzDn0TzsapU6CgGKuENY6bhpPGJfh+D/H7cON1
	ljxUVBZoA8xTkNqaVNs8DX4qSaOb/lTxUPt1xBhJIMqs6ql9QA8PwdWOvVqlscBVVHFog11VF6y
	br3VVrwlQVph1aSPSLNYwZZWMSxP8dg1AnuCIct075K2MUcojSqS1n6lR5qvX3cAoEb8RUrn84o
	wKdtR42IvM0lc9O9ZwclqYSWq1+Ocw49L3ms3PWquvViZcpI9Dky8BVP6ZQ7Gm2oa0iCijZ27oD
	qkcvEtEATsmkYmKNi2lowAa9KKJuwEF41QomUcuD9oIo6ipLhTRD
X-Google-Smtp-Source: AGHT+IEOPRBz6WQ4EitH6B7+CmA6sNE5X/hbPdALVt58bY7uN7m2ozrloc6Kvy4FEt2HJB5mXkDBZg==
X-Received: by 2002:a17:903:41c3:b0:215:4f3b:cb20 with SMTP id d9443c01a7336-21c3554b37emr589252295ad.23.1737942373083;
        Sun, 26 Jan 2025 17:46:13 -0800 (PST)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21da4141f93sm51344205ad.147.2025.01.26.17.46.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jan 2025 17:46:12 -0800 (PST)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/2] support for csot-pna957qt1-1 MIPI-DSI panel
Date: Mon, 27 Jan 2025 09:46:03 +0800
Message-Id: <20250127014605.1862287-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The csot-pna957qt1-1 panel uses HX83102 IC, so add the compatible to
the hx83102 binding files and add this panel to panel-himax-hx83102.c.

Langyan Ye (2):
  dt-bindings: display: panel: Add compatible for CSOT PNA957QT1-1
  drm/panel: panel-himax-hx83102: support for csot-pna957qt1-1 MIPI-DSI
    panel

 .../bindings/display/panel/himax,hx83102.yaml |   2 +
 drivers/gpu/drm/panel/panel-himax-hx83102.c   | 123 ++++++++++++++++++
 2 files changed, 125 insertions(+)

-- 
2.34.1


