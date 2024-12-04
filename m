Return-Path: <devicetree+bounces-126956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6222A9E3BE6
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 15:00:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE4DF166A09
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 14:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4659E1F76BC;
	Wed,  4 Dec 2024 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LSoRvJYR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FF61F7063
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 14:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733320834; cv=none; b=PB/wqiJb3Bu8pYSkv2eUIYYft4BqpMFla2xXTepAjqUSK/iFPJxLOxDF91UVvWWCJeSiYERI3azm7pf/q7ILxsK369u4+MInbZbkI7QSy7sWbbA8pESNDW0vt2T4lK93x4c7TO3m21DU+x0eFFMZJuy5MgGwTwiV0X6YVTambDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733320834; c=relaxed/simple;
	bh=H95Tmerwf6ocgqV3ped1L/uCM+XW/SsZT8LrQqWk1rY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Wq4U1AH8/QzpgvL6AtfY5rHBrTWP1w4LiZLgSHnzgIa1KEUn8VRwNIQpPFGNdeRnsYj6NjA8X/ZrdFaRCKmJ1RU2wX3anjUto1dDFRUcNECRDQTtNxSvE9rCenjCxf2UvJVW7OjbWQwP8tnktBQthvkizImR77OD+pfWntSnAfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LSoRvJYR; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385dfb168cbso3299011f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 06:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733320830; x=1733925630; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bV8QY5eukfrq2lN4tsY/+E6/ZMZn3nftpYsTU/xeZxU=;
        b=LSoRvJYRJF7PbC41IAugr2/Gf7cP7HRCzm+NU50/NBjASwzsPie0Jl5LCQ8Z5m70mY
         wwL3tvjqOZ+TBp99Fb0vM51g9trrRALSnYrl3xxmiHNxZeryWgJb6384KaxM8VBIgRrh
         BG4UIBXb7T7s/jI4r/cUGqQFcRr/pWybnmtIj+FsHcfloLPqgyI9OXL2UOrAtYjMdfiS
         XiDc8FGUlW7hJoOSuIQN/lqThl4xpnfT9u+v0GNQPVukHAxllwsa9gkO7Z/elCaDj6Tt
         ahyRQDK3dPf6aF+gWyLZap6G//iRD2OZdWioCRXrsM7+zxKaEBIsyXDWcX3CXSpYeUzs
         OZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733320830; x=1733925630;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bV8QY5eukfrq2lN4tsY/+E6/ZMZn3nftpYsTU/xeZxU=;
        b=X4puXiBiRV3Y3xO5d6kS0c1QuiE3kWkEI9Ul96NsHVopuz1i1CK0qBr8m77wxfRYVZ
         CnAqhxRY3RtE6diN2fHufDUCdKK+lzTTpdp69pohcl3OZ4M4Gu4/ru+AEbGnlqsa8/+I
         SSN0FM1lzomC2quJC51OMXq2fhZ2NH+muXt8ndXu5SCHYz0k57zXa2jAf6BlrRYTJvbY
         OBLwnKunz0U6ahe5Es50kXEJIJeABO6Gz6P5LKssepWcCoOP89elT0Z5M4QWGv7aKsCV
         GzGTAcazK2FBj2aDZn5aPwTvEqOuEFtlQyAabC3covekqSMd31BcOGvnx6WyCn35Eg1C
         VWXw==
X-Forwarded-Encrypted: i=1; AJvYcCWG8qOvnJuF7kCo0QJgdpFMBSsRgHLoDCrVZ5PLz9YXFY2QsPFitQ9CUtLNtFfd3idxk22DCiSvv33u@vger.kernel.org
X-Gm-Message-State: AOJu0YxFaHE4EcOmeB9CrrFmjAmXZRHK/gfpe0Za4JrLsdxaMTq02Miv
	NoT5Q83n7bj7Kzpq4bNPK61A+kqHbKGzeeEvzbhwwptFXB1EvfwyWewHnlocfRQ=
X-Gm-Gg: ASbGncvKXGI9gQnf9bTaUr4RfRaQ1aaVGpYFJVjUQX3+endwxcFbrzTsXHlJdFm3Tjg
	W3XYmDyAbowYYoxPIEIkxxUqa4xsVXk/p1voBt91S1Ag9R9HXEfdJ3H/wGqC9l0yOMtc8VSet/g
	ouZPVEreRTGJWfsh6Pw7lBUi8zPxNtW5DVPN6W+RLtrM+3aHtHkb/x37vjYk3CsoJB1HqDc9C6Z
	hg4pj2+g7mG6VKZQoSLhSYZVTxgsR22OGhvXvNiOdJdNYVJnYTvvABeNnsXQXeO6SBywf0=
X-Google-Smtp-Source: AGHT+IEwNi9zQ3A7BISJyLzoaI8unrHh3ncETKsF78rBfn5vGpXEDRRpfEKjoscYnK+ZRjyytNSKlA==
X-Received: by 2002:a5d:598c:0:b0:382:4110:ecb with SMTP id ffacd0b85a97d-385fd3e905amr6274200f8f.26.1733320829865;
        Wed, 04 Dec 2024 06:00:29 -0800 (PST)
Received: from localhost.localdomain ([2a00:2381:fd67:101:8e2:966d:36c4:3579])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385e2c84d52sm13689978f8f.49.2024.12.04.06.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 06:00:29 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/4] qrb4210-rb2: add HDMI/I2S audio playback support
Date: Wed,  4 Dec 2024 14:00:23 +0000
Message-ID: <20241204140027.2198763-1-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rebased, re-tested.

Changes in v6:
-- updated tags;
-- corrected dai reg number in q6afedai;
-- changed dai link name to hdmi-i2s and updated commit message to reflect
that HDMI playback can be used as i2s playback;
-- removed excessive dai-link from sound node (it should be a part of
another patchset).

URL to previous series:
https://lore.kernel.org/linux-arm-msm/20241112025306.712122-1-alexey.klimov@linaro.org/

Changes in v5:
-- drop MI2S clock in sm8250 patch (seems to be merged);
-- fix gpio-ranges in lpass_tlmm (Dmitry);
-- added reviewed-by tags from Konrad and Dmitry.

Changes in v4 (or since v3):
-- cleaned doubled spaces in the last patch as suggested by Konrad;
-- added Reviewed-by tag to patch 4.

Changes since v2:
-- added tags, updated commit messages, added Cc;
-- updated LT9611 -> LT9611UXC comment in qrb4210-rb2.dts;
-- updated addresses in DT to 8 hex digits as requested by Dmitry;
-- added lpass pinctrl to sm6115.dtsi as suggested by Dmitry;
-- added lpass pinctrl override and pins description to sm4250.dtsi,
pins are the property of sm4250;
-- verified with make dtbs_check as suggested by Krzysztof and Rob's bot.
-- dropped two patches (they seem to be merged):
[PATCH v2 1/7] ASoC: dt-bindings: qcom,sm8250: add qrb4210-rb2-sndcard
[PATCH v2 2/7] ASoC: qcom: sm8250: add qrb4210-rb2-sndcard compatible string
-- stopped Cc-ing out-of-date emails.

Changes since v1:
-- removed handling of MI2S clock in sm2450_snd_shutdown(): setting clock rate
   and disabling it causes audio delay on playback start;
-- removed empty sound { } node from sm6115.dtsi as suggested by Krzysztof;
-- moved lpi_i2s2_active pins description to qrb423310 board-specific file
   as suggested by Dmitry Baryshkov;
-- moved q6asmdai DAIs to apr soc node as suggested by Konrad Dybcio;
-- lpass_tlmm is not disabled;
-- lpass_tlmm node moved to sm4250.dtsi;
-- kept MultiMedia DAIs as is, without them the sound card driver doesn't initialise;
-- added some reviewed-by tags.

Alexey Klimov (4):
  arm64: dts: qcom: sm6115: add apr and its services
  arm64: dts: qcom: sm6115: add LPASS LPI pin controller
  arm64: dts: qcom: sm4250: add LPASS LPI pin controller
  arm64: dts: qcom: qrb4210-rb2: add HDMI/I2S audio playback support

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 51 ++++++++++++++
 arch/arm64/boot/dts/qcom/sm4250.dtsi     | 39 +++++++++++
 arch/arm64/boot/dts/qcom/sm6115.dtsi     | 87 ++++++++++++++++++++++++
 3 files changed, 177 insertions(+)

-- 
2.45.2


