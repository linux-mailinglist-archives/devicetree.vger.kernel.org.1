Return-Path: <devicetree+bounces-86106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C66932649
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:11:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8A7D1C2226C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 12:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A954519A28C;
	Tue, 16 Jul 2024 12:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="LwUOpVOP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB7198857
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 12:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721131884; cv=none; b=UYMNMu2sap8VB91jwagZglts/B0g88t+K0jwQsh2D9PKbw7OSofgaPtI/Xv/ASn0+rAfaxaaf2atX7TV0D/gv7vgkWiG4vcOyM8DBLttnOlUTU2JmAEUtSy7GOCOKCW+tEAk9u2GgU2tveDEgyAkXvX7OPepRkjDpehVQ8TKMro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721131884; c=relaxed/simple;
	bh=OuYaRw/e2BUIpKew36qzLtdkzG3lgHXSgQcxBzEFdLg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=eqXP3F2J2j/kw3aLcV1wtiMYwOtAkucW4YbseFQc2yWCPfnwXFk8z10N9AmOY+dPyZlPKuHcB4/oUxCXruLdGHIzc+jYpkZK1i0g2wPRSLkLVChpQB26purSrsbXrRjwjEaf/FBzRHrBXvXqMAvfhd8ip9KJUNzEXdU9G4MxU9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=LwUOpVOP; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-70b0e9ee7bcso4102493b3a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 05:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1721131882; x=1721736682; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vWy3QUylzw0ayHlV7QU3L87cEvQwTf+7VJ7LitrTlLg=;
        b=LwUOpVOPb63fiZO7vd9hXAGIMgmM/2XTHofhJaPFbGEp2yKLEa2A+35j55LzyL0QXf
         NgZ9O+xJ2hkQIPgo9Ay3Sg9SNJ+aK9JqMQjFuBP9EUgaCp9NJLB5KfBgyFAjbk8+NGyI
         8t8yF+URBwOr1Pocqy/zMZMG0NRnytRPaPP/Q/TfQqkofjsJVL0m0ZKzF+LpDkJ3Ywrk
         1dsHRNxvEDPL2vZUC5p6VMnmY2VWuLNJhahALCsk/Ele/TiY4KA8ZqObZpPwqpXhZ6Kg
         6JLYoH2L1d320oNEsL0B3elABEAfW+NQpDjMlAQw5lW8zzxjy+kcZs8SY3wvDPsAQG8t
         HrPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721131882; x=1721736682;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vWy3QUylzw0ayHlV7QU3L87cEvQwTf+7VJ7LitrTlLg=;
        b=hW284gbN/zkec3Gd/zjCUsX2/0V74/sQxUB6MF9OtYoqrg5eqkXuj5UgZhXjGILpfc
         Qyi5ifxYk2mRJlSlzhUaRZ8+tc4S9/ZQaMDRCTaN0ZsBoHPTCkkBqsZF4BX7FQTY/Jdp
         oUY4Tn8Bhm5Y4JVw5CqApQ6idtsccv/Yjig97cmH8EIKbsZ9GWzGSlqObxSRvZ9TQEmL
         tYSQ/GHKrvJcw/QTvUOAA+nsJrm++cTTRm63p2wcOAH/4kEK6rvv9A8szOjb4mo7r6wK
         v01E3k7PKu3OktqhI6sG7AjpxwQpe0EJHCLNUeTanPZnip1LVTbUHs71SLG1tzXlYUqh
         cOvw==
X-Forwarded-Encrypted: i=1; AJvYcCUB3zD3NgDxc9SQ9/uyvkeBcAzSbvwVhpQeTQapOFE5ytztx2NnMwWFZiUrjplnwfYrs7OaCqsKTscgbjHX50nn4gMM5n2PckqwFA==
X-Gm-Message-State: AOJu0YyPHzF5V7z4Wkf58qbqXVDDsKB2rutDwrMAWJNZ8AGsqxmgIEYY
	Sq1TqzycoxiWvQvXB4/lhW2qtdB5LVo948njwl344polleLPGM5l+CYFjWe/zRI=
X-Google-Smtp-Source: AGHT+IF3q060DbGSBRTI8U3NNaLmQh66o0p//PgKITkDQ8npkjIZNbEwzf5dS0d5vcSWygTQX79NKQ==
X-Received: by 2002:a05:6a00:4b42:b0:706:6248:949 with SMTP id d2e1a72fcca58-70c1fbe181emr2435528b3a.17.1721131882394;
        Tue, 16 Jul 2024 05:11:22 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eccc48bsm6114065b3a.203.2024.07.16.05.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 05:11:21 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	airlied@gmail.com,
	mripard@kernel.org,
	dianders@chromium.org,
	hsinyi@google.com,
	awarnecke002@hotmail.com,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] Modify the method of obtaining porch parameters
Date: Tue, 16 Jul 2024 20:11:10 +0800
Message-Id: <20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The current driver can only obtain the porch parameters
of boe-th101mb31ig002. Modify it to obtain the porch
parameters of the panel currently being used.

Also switch to the drm_connector_helper_get_modes_fixed() function 
to get the porch parameters.

Changes between V2 and V1:
- PATCH 1/2: No changes.
- PATCH 2/2: Switch to the drm_connector_helper_get_modes_fixed().
- Link to v1: https://lore.kernel.org/all/20240715031845.6687-1-lvzhaoxiong@huaqin.corp-partner.google.com/

Zhaoxiong Lv (2):
  drm/panel: boe-th101mb31ig002 : Fix the way to get porch parameters
  drm/panel: boe-th101mb31ig002 : using
    drm_connector_helper_get_modes_fixed()

 .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 29 ++-----------------
 1 file changed, 3 insertions(+), 26 deletions(-)

-- 
2.17.1


