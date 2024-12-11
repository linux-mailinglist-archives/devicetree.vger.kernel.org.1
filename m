Return-Path: <devicetree+bounces-129631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC6F9EC665
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:03:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E65A3280F83
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B97E01CBE8C;
	Wed, 11 Dec 2024 08:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BczuDJ7+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DD81C5CD6
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733904202; cv=none; b=nf9PyXjeBZ9bMYdBfpJMtKbvsTXAkzoXCmJyqJR/ddmWsA/U2xkces0yRWEWqPj1iS5wLetKJOWyXtSFOH3SbMcGK6qNAd7vxFlUpeKyxFF1JySlObyPrfPUrdVDXih3nriAQSItkblyWx7jOzCjscAjjXfCGFYQleOFE7u2slU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733904202; c=relaxed/simple;
	bh=18dfAsJlCKKxYu008KH/doncLm3ahMbb5fWFgsTqfyw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=n6dy06vsAL9pOQwhoc8M1YrTO1DiCrcaytth4RDkOgv03KyVd/EJXP43gYtZJoX15PvmIwkO3NdThJyKSQKGUMZhIO/Wik+UV0UNutn98EXO9I8UJKkjluHX6Ayg0jWoYDFOgOs/KB/VNcRXaHzBSookK45MPfeVBqeF1oOJhkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BczuDJ7+; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a2033562so55718265e9.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733904199; x=1734508999; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uUTjWCfFK25O0mEpKlAILv7lGyjXAlPoRvwgz9GDlh0=;
        b=BczuDJ7+3N11cKwhBuxUnXrzd/nZkPLV55/7dU6sbZ+EZuy0t3uR70VgwS3Tcxm1Pb
         fJdnEvLumVmbjClp6MyXmNFBUBvvBU7wIV6sihYHhhre4fp9hdYuwj3eZxKcc8Mdw2sJ
         vKNzOE9csyCpZaTWgKflgBCHKFeCPbd4018dBw5Z1IU+Y+3DuUAkQe2S7rEwH0ZsGmw1
         wpYA0KR2cvHw7y2yAc7tZCrldd0FfI4GakKKXl8qK7sghTOiZ6G2GZFAFLRKu6OXU4Gs
         HQ8saTuEMEzFFKQL4cv76Z7qjd1Pg8fezhcG7+RgcbXjvW3fxOEApBz9K6rcWZzph1WG
         MQmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733904199; x=1734508999;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uUTjWCfFK25O0mEpKlAILv7lGyjXAlPoRvwgz9GDlh0=;
        b=w29ieiLxo7EfwSZdPkWvkmQ+DnLpIJiTRjamk8550Qku0K3J7FoYOQT8n2bhH/Ux4P
         D8a+BdU4fCHpOFtxooM5wtjM98KsdUNXrFImIMfLr2Uc7iDU++uQRY/UJ/Z6KBcCVWK6
         CK9Hgdb8MhXGEp6RaXJkg6sJ1xto4vV6P4xphd1pv+q1bYure0w1VF8nTlAjb0DQT/zs
         ZcTjcjEh3XRd7YUpJr0p23Uek2uQTbnMQHfFyi+T4Wx2je32hEQkNvJTDYVBgfIBpBJx
         393HJS3NyKM4/W06/yr9C/ooenxj96+aH0zMpkgdT3+0Ia32dGlsOLImBc2PxrphoIyY
         axog==
X-Forwarded-Encrypted: i=1; AJvYcCVVVWB5S0ugdm1JSisULVFzzr+D6idwB7NCawZGTasIewEtaDuZH9mZ9JmmUfkz9jVreKY5WJOPuVDX@vger.kernel.org
X-Gm-Message-State: AOJu0YxKUAIk+CwnsF0HWkylpmaRsh9rNXK/1uhmOQf5+9gqLf3UFiSF
	1uhTJjYJrAHBG64z9oZniCYN7qe7+UvXEo4futAoouSt9snXt8Dq5chFzl/7xZM=
X-Gm-Gg: ASbGncvDXOEdvN4DkxS8K9qzqGryLhTf5k82QvKs4GnNNsJt82TShZFmAeZVwnTbutx
	xgFlmpddgym61fGWzpD5290ktcjsaPByyVS5kso2Ox5pVUkDJceBmOk05uLrTppNfkwvQFzdqOc
	Lcj1HBDZo5j+W/1rExs+9ezaDea6i3UBAS6PXuFmrtWJodWyGHlEzNU47tLrGMEzSS5ntiyqkvj
	Z/aFfM9R6FsRQ2N/Q7/cbkPrQIMxCeFKQ8xH25o/750jISRTklnIDd3usU7D1psI2NjJrvIXkA=
X-Google-Smtp-Source: AGHT+IGYzjF2GoMN/mzbTBQZ9HSt3+0BYcYYNQD1nS7FVlmWb2TbC/8TDIB4hAO+rR8sQxvunv+I/Q==
X-Received: by 2002:a05:600c:198c:b0:434:f3d8:62d0 with SMTP id 5b1f17b1804b1-4361c375f53mr13238575e9.3.1733904199425;
        Wed, 11 Dec 2024 00:03:19 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361b09fec0sm24205795e9.4.2024.12.11.00.03.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:03:18 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/6] arm64: dts: qcom: misc DT bindings check fixes
Date: Wed, 11 Dec 2024 09:03:08 +0100
Message-Id: <20241211-topic-misc-dt-fixes-v3-0-010ac10529b1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADxHWWcC/33NTQ6CMBAF4KuQrh1TSh2ElfcwLvoHTKKUtKTRE
 O5uYaWJcfne5H2zsOgCucjaYmHBJYrkxxyqQ8HMoMbeAdmcmeBCloJLmP1EBh4UDdgZOnq6CCj
 xbFVTK2k0y8spuP2Qh9dbzgPF2YfX/iSVW/vfSyVwQFsJrlGepMPLnUYV/NGHnm1gEp8I/kZER
 jqNujHKGll3X8i6rm/nug5Q/AAAAA==
X-Change-ID: 20241204-topic-misc-dt-fixes-6468da97a4cb
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
 Felipe Balbi <felipe.balbi@microsoft.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Douglas Anderson <dianders@chromium.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1693;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=18dfAsJlCKKxYu008KH/doncLm3ahMbb5fWFgsTqfyw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWUdAoAOYV7ddktvLNtwMgnWG4pTDqVf71cRha4C0
 m4EJO2yJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lHQAAKCRB33NvayMhJ0UHgD/
 450PKIYFMPm+C9+o5gXBK79aUxibPFi7jkG/C7GnZ+VIxF+mJ/QAo5GXrQAN008wBTyDGMphlkonCw
 YPdQJpaNE9MabBLO+JQExLfXJEji+Cw2MICOyIQaEQGe+XiWyEsKFriq2wgAzp/PTe/4YyL32NHn1/
 idFWfZEu4boELbTYUGQYRnHJ+BkY90BqGzR6aFLTHidPVJQ4Qo1MH0gAphDjS7vv8MCOBr9dhuw1r5
 9ApHjWlyBXk2J6kuzq3Kq+yn5YtDxiwCQ0pH+mer0EEUHJeTJeokibhSCuJsvv9WMD4RWqixb++4Ie
 LQv36pR5/gjevwZzYgBqWHi3deL1WFTIpH+LKsoku3IbHbD374fGOYxq4J9xJFVczK6P7xTUSOIdsp
 NCo87Nqm01J8TCmy/FNw394ZY65Y5qQIoXQmUlCjj1DtkyqDM2rQ0ZYSj0l3XEKVhO4nqUatrEmgTF
 wbjXYuWOhm2VXdg1FRr0exXq2RJJqwDZ2l9lFXstOxjKYu3muO8od2BxmrHnMHyJ3XvGMfKuihO5Cx
 PlX0lJug3SE4nIYBS/yJE+5e+HDu6pQHgAvVfs/+LxEI8fBQ8hRN7XpZkYBMNcyNb0A6/thzb7e5/t
 3LbWapA8T+/po7Ap+HtR6W7hk0LLsolqNlHq5e+/lNiJk5ByC/gmhNQbg58g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Here's a set of DT bindings check fixes

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v3:
- Added review tag and missing fixes tag on last patch
- Link to v2: https://lore.kernel.org/r/20241206-topic-misc-dt-fixes-v2-0-fb6b9cadc47f@linaro.org

Changes in v2:
- Collected reviews from Dmitry & Doug
- Dropped camera support entirely in sdm845-db845c-navigation-mezzanine
- Added fixes for sm8150-microsoft-surface-duo
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-dt-fixes-v1-0-6d320b6454e6@linaro.org

---
Neil Armstrong (6):
      arm64: dts: qcom: qcm6490-shift-otter: remove invalid orientation-switch
      arm64: dts: qcom: sdm845-db845c-navigation-mezzanine: remove disabled ov7251 camera
      arm64: dts: qcom: sc7180-trogdor-quackingstick: add missing avee-supply
      arm64: dts: qcom: sc7180-trogdor-pompom: rename 5v-choke thermal zone
      arm64: dts: qcom: sc7180: fix psci power domain node names
      arm64: dts: qcom: sm8150-microsoft-surface-duo: fix typos in da7280 properties

 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts   |  2 --
 .../arm64/boot/dts/qcom/sc7180-trogdor-pompom.dtsi |  4 +--
 .../dts/qcom/sc7180-trogdor-quackingstick.dtsi     |  1 +
 arch/arm64/boot/dts/qcom/sc7180.dtsi               | 18 +++++-----
 .../qcom/sdm845-db845c-navigation-mezzanine.dtso   | 42 ----------------------
 .../boot/dts/qcom/sm8150-microsoft-surface-duo.dts |  4 +--
 6 files changed, 14 insertions(+), 57 deletions(-)
---
base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
change-id: 20241204-topic-misc-dt-fixes-6468da97a4cb

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


