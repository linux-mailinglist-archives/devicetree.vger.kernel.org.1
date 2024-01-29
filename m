Return-Path: <devicetree+bounces-35998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F9983FB31
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 01:26:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02EDAB21F00
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 00:26:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791B853A0;
	Mon, 29 Jan 2024 00:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uZJ1ukuI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56C74C84
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 00:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706487966; cv=none; b=Cfo2iDsb/VVckCeZpSnoxyJVDCp41Shzzj9PyTx83H79BHNqV3H/pMQ63eLEGW08cFdEp/HJEzFbq51ciyfa49GJTEI6WbI2+xCrkOQBiBw1fvj9uH6xuzbiOzBx524EwTcW0FAtioZyCvtvik58E4V2iePiFvsDxSlolNqBYGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706487966; c=relaxed/simple;
	bh=fAzsOPWQXg496cQXdSRwttLRSK17eobKfvDNm7cJwnI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DZ1FCCC56rwSkfRXysOyvj7KJgdV56lIB7r4bz1eATazK9XDJbde6iEH+Z17LxeSbRJcEBBk8RfwYdHR+8j33m7b3zlbQzlATRohckDW+6r44SQDsXRjXCR3tn5Cvn0srkpn7GtbCCVxQYt0mdi5oOWzcOaYPgQIDrLpCCW8vYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uZJ1ukuI; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-55c2cf644f3so1779337a12.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jan 2024 16:26:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706487961; x=1707092761; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QSP/j0QUmoRkVRe8b6nQxtIgMt443r+QjiLpoKVUJr8=;
        b=uZJ1ukuIKsQ/cc6NPsllbQ9F/w4l2IM/LxJC8QUlCZFRYf75UHbT5rHzCpsSFE5Ybe
         kbJwSQ0hWMytVioBAedwd4A6FMlyIJRObI95J2EbZ4/dNcDwxMsMjyOEhOGcRrEdcnI9
         ZBJWHt7DDr1NaTEajI5KOE9iLE+NVWPTo95XFhI6zVlkdhTTnlb5usK3c/mVdnSnmDNe
         NvsrFIvJjij+3qDQWw9pRG+8+mqQ3ez7+aIGYQrtQZJFWI8nZfwdVcOiYWzby7L6FB3H
         WL8Zg50figIPfffkA6VSIUPh4wh3KKTwzPob+BG2iXkMAhzkc1MoK0swklE91IrrnNKQ
         5ngg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706487961; x=1707092761;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QSP/j0QUmoRkVRe8b6nQxtIgMt443r+QjiLpoKVUJr8=;
        b=u0DEITaXKz7rY0YBAoHywSZtu0Vx9DQE6MzT2srWOMZFDzNzxSb5UecQbF7UnHRpnz
         qlDcnVPNYosP3zfr+KyJwHRXkHjn3r7k79eFaCtixiWayFdiTfPSAsCefuUpuX6life2
         1fV4Xe5WsjCsFcMhdbp6VFImvx8deV5J4dldG6JjNb6LU96CDj59W/j9ow5ZndAlHA5p
         ng1WaSlvNtp+A9+2ZQx78W4Re+nE5Od2kF5s8Xtz4N5O6jfQ/sA99WjmPEaGhdfch4m1
         zfB72Ng7y/SA8qmwi47y1L5v1fTrWfSRBmQus+j5hNqMNX7zC5Ztg6jVJEwNstB5UbIK
         1o3w==
X-Gm-Message-State: AOJu0YygCd6F48Aa2aAPKKk3f8qzjxmRLq94A8dhDXWEtZzJc3Kv07hw
	Za/DHzQ3+dH9C2+2MWT/iD2g5AKmuJwdl+S+KWW7b56D+KAXtAfhljXF2Lm/4No=
X-Google-Smtp-Source: AGHT+IERBspR/BOG1bTBqBY4Y6bfWcD0fOJHyOWkJ1LLmNscXmuRLmLuU5s0xeNWt9RRyzLTJhBxbw==
X-Received: by 2002:a05:6402:4503:b0:55e:dcdf:50b0 with SMTP id ez3-20020a056402450300b0055edcdf50b0mr1828652edb.15.1706487961084;
        Sun, 28 Jan 2024 16:26:01 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id h29-20020a0564020e9d00b0055cfb3f948fsm3208193eda.76.2024.01.28.16.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jan 2024 16:26:00 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/2] phy: qcom: edp: Allow eDP/DP configuring via
 set_mode op
Date: Mon, 29 Jan 2024 02:25:44 +0200
Message-Id: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIjwtmUC/5WNQQ6CMBBFr2K6dkw7TS248h7GRWkHaIK0KYRAC
 He3sNKdLt/Mz3srGyh5GtjttLJEkx986DPI84nZ1vQNgXeZGXKUAkUJs6CCC84htguQi2DDK5r
 RVx1BotrYMSQotJRkjbbWGZZVMX/8fGQez8ytH/JsOaqT2K9/BiYBHOqStNYKSyXdvfO9SeESU
 sP2woQfVsQfrZitplK6uFqUqqy/rNu2vQEn1po0LwEAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1980; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=fAzsOPWQXg496cQXdSRwttLRSK17eobKfvDNm7cJwnI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBltvCQBfS5UyZzHhV0GQwwQcciT4hN0x/JoP1/G
 prHeMx7m1OJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbbwkAAKCRAbX0TJAJUV
 VjrFEADJnJpjIiS2JY5iAhr+bwymSv6XOiwMhJ4R5gRXky2QknEdN7w8QdUAGoS07hIU4ZeZKU5
 4Kk7X6k8N13FcTvv/Ht1o+l3wmqIalhWQh4dZ3cM3eF/E5bNlEDeU8036WLOhvjJ0JGKG9PAbkN
 3bs/fH8DxEQ1P/phajqIl1H1lzWqu2irPh+c5CkDeUuaLj3FdCLTOHPIF8YS8Vp4kUpNosfk0vM
 gBAuV8+n2fylK6tg8MKzHUDb3ReTmrvLfemSWq/wbKwz6nNu1RyPA3pb4lu3NOG41ZQAaw2b23a
 MjVgkuadPGVWqSPTALwhB8FlxfX+SQ9hmpD0yFlWXOqknOZ9hXt7xBIos7MCWNwNdf2c6n3uD/M
 rjMUWV4yvrKK1ZrJW/34XfANc8E7Nt7yKDj5RrwdRakP18BOyoggYkQht47G/50ICnNAK4kNtQW
 NSL8UfHuws+qy2HRPME1/c+6g/3mggQfIWEgwLAKqO24eoLWnoYvYUVI+fpD9r0UJLJnndziSAn
 4eMdvcoilH3189B3ptkwTgmfjyt+hFMpoGRbqgJNmfAW2RsR9sBGVD3gui2xPuG7hUuDeYYw+4+
 8FZdDSfWWdBq4CgLknUIzjVjt02xpgcdW4ythAC5a9B9WleDfsG/ZC5S2LILtuvPI0pEhnRgDnR
 uwQ62LSjJwkC52w==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Until now, all platform that supported both eDP and DP had different
compatibles for each mode. Using different compatibles for basically
the same IP block but for a different configuration is bad way all
around. There is a new compute platform from Qualcomm that supports
both eDP and DP with the same PHY. So instead of following the old
method, we should allow the submode to be configured via set_mode from
the controller driver.

The controller part will follow after we conclude the PHY part first.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Dropped needs_swing_pre_emph_cfg as we store the table instead
- Picking the table based on is_edp instead of overriding.
- Link to v2: https://lore.kernel.org/r/20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org

Changes in v2:
- Dropped the dedicated xlate function and added set_mode op instead
- Dropped the eDP PHY type and mode addition
- Added the DP PHY submodes (eDP and DP)
- Removed the device match data storing from the container struct
- Link to v1: https://lore.kernel.org/r/20231219-x1e80100-phy-edp-compatible-refactor-v1-0-f9e77752953d@linaro.org

Initial attepmpt was here:
https://lore.kernel.org/all/20231122-phy-qualcomm-edp-x1e80100-v3-3-576fc4e9559d@linaro.org/
Compared to that version, this one uses the phy-cells method and drops
the X1E80100 support. The X1E80100 support will be a separate patchset.

---
Abel Vesa (2):
      phy: Add Embedded DisplayPort and DisplayPort submodes
      phy: qcom: edp: Add set_mode op for configuring eDP/DP submode

 drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
 include/linux/phy/phy-dp.h          |  3 ++
 2 files changed, 54 insertions(+), 20 deletions(-)
---
base-commit: 72dd5696a6a27d019a1592acbca13263a2ebbac6
change-id: 20231219-x1e80100-phy-edp-compatible-refactor-8733eca7ccda

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


