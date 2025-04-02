Return-Path: <devicetree+bounces-162624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C14BA7914B
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 16:36:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B5593AC311
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 14:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC95223BF99;
	Wed,  2 Apr 2025 14:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u4lV3mTq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB2E720E328
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 14:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604601; cv=none; b=j5Fi3jCm/mtJOiK2xbXPcmftpKRiaISORLnGThHpESOddp8lS6cbEk6wYVHERddtLp/Qzt+zaPFq9rGrv8Jp3WwJhjKOnAunrt0ap22Llj9nrXqRRPxBSde2I1hFaP8a5lY95amhconLeEb/6SgbhFuIBtbJ3JVhGfAsyICpbdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604601; c=relaxed/simple;
	bh=8hS6GfBJNXR0FuahNdWaTupB+X7huKbQP3wOJFPU12o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mTGzohJGpoHTvq7Ne89//UsiSC6jPnQyf8GSWa9ipSL5swst5ZmSxvDOigpQ9Yr2tslekKkTOwIrKuV7wkIewKYabudUP+IgCVPJC2XHKQSU0a/nkhrFaUCfJhcpYFCyN6ZMp2BesUerFT2n9MXJN6kG5Q1rvHhuHDUqyRDc8tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u4lV3mTq; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-39ac8e7688aso5270249f8f.2
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 07:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743604598; x=1744209398; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JzxsAOJT4Iqs9UJzPZL2Q0zcziM4hu6YpQDFHvHcut8=;
        b=u4lV3mTqTPysPBatsAMFr7ce0+lFiFRvqfyNK8GWemGdxguoeSq6Pn/WchI+APFAPo
         pPhcE8FRCkm9OEYy9yO+uGuKZGQsgrqNqC5qIlAjzoIQvP20r/Ag/JVlVypDFSt9MlKz
         er8b0Zu9YgFHK+twe/20XF6KLOtGhPkG3j1nWlLkj3vKoUvsggSHklfbvOFZ8VANOPLu
         vQyzC/9pXdH9l9yk4vtNYiDJtj0uSsfEHMPnTVhI86X+4EAKIzHyOcry2NROHwIa7Rjc
         svNcmcurjj/LxJS3hmlM5ax0377Oh6T2x34onxxzfI6/VrJS1lgTE/haeIv0UDUd9FbX
         95yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743604598; x=1744209398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JzxsAOJT4Iqs9UJzPZL2Q0zcziM4hu6YpQDFHvHcut8=;
        b=cYd3c5b4hdLqgI6qrRQtHMefzHhLyULT2P0VqHSR/NEU9qAJX7paHj+pcTCfAbvKo3
         yL5gtxHFywEQZNFqIfTiVURX8DaAtgu33TPtxrhH1ElnRAD1ywJ0rwDbnT+Ok0iYOsAj
         kZHItxJGy5Hm0iKUx7fXsASOB1HMw55x+QxK90wM3Zckf4rltCdHqKS/gbBB8JTSf8Kb
         I+k37QyESMQM2cmk2LfQdOkFAvjCfaakdyllFv7g7w/nQZ0Nh+2Udb2W54wWxFqYxKA4
         VnWVWWN1/XTWX+4DhN1j0lFEZwDHbnq+AHLS8MgUDkxpoiaV9/whwAAU0MKMAzOhO3gI
         bbqw==
X-Forwarded-Encrypted: i=1; AJvYcCUA7YUf7bHi3uzvkEZJOQVDtKorWcbDuSTMfpfhnoIVleQZ9ZpxehXCzqtm/SZzB6pqgq9x6JV+qYig@vger.kernel.org
X-Gm-Message-State: AOJu0YweWuL8oefQFL9OAY4VCDKo+EmpwVciJIc2+MP3iJndeYrMxVzf
	QE9kofyQ7qfnZePP1xY0cJ9yt2ReMbv8dK0NuhPvIpn86OE/oA0m0AyOAFqogC4=
X-Gm-Gg: ASbGncs0OoyIVHXQN/Rut9cllahmjBh8xSXLvvnTyqNG340hDGk8EfcZBJaJFvNKRXX
	AMgp8G6n3HUnEDirhg2RfrCOXQK51iGFPLHJLtM2PGG6UlRkdS++6sJ8rJIQBMWmwSG8sAFbXfi
	i8jjyVcyr+hq5tWnrk2jParWe2P6pILXX23MO9FShB71GippYnD+wDEZxddq3ZsThplyqg0aX/I
	heo6Q2Tj2McSZvTY7PrXUaCHg3o0B6vXyGunoLNlJBpfou5JcV4N+APwwWyFJ+QkyMZ0UWJOD13
	ugm5Ppk2bJDB4uUqmvdfTIo+sLWDFpJDDSf/bF5Jgffu/7K7PPIb+Isb
X-Google-Smtp-Source: AGHT+IGfBz/Tbc3ihv0gbUFvVnQ+Ik0K5L560vpD6awXQAxP5KkZBzRejgIatspUJzWM+LD8gckAfQ==
X-Received: by 2002:a5d:64cd:0:b0:391:412b:e23f with SMTP id ffacd0b85a97d-39c29751a59mr2180684f8f.15.1743604598316;
        Wed, 02 Apr 2025 07:36:38 -0700 (PDT)
Received: from localhost ([213.215.212.194])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39c0b662850sm16965019f8f.26.2025.04.02.07.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 07:36:37 -0700 (PDT)
From: Christopher Obbard <christopher.obbard@linaro.org>
Date: Wed, 02 Apr 2025 15:36:32 +0100
Subject: [PATCH v5 1/3] arm64: dts: qcom: x1e80100: add epd hpd pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-1-ff33f4d0020f@linaro.org>
References: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
In-Reply-To: <20250402-wip-obbardc-qcom-t14s-oled-panel-v5-0-ff33f4d0020f@linaro.org>
To: Douglas Anderson <dianders@chromium.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>, 
 devicetree@vger.kernel.org, 
 Christopher Obbard <christopher.obbard@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=726;
 i=christopher.obbard@linaro.org; h=from:subject:message-id;
 bh=8hS6GfBJNXR0FuahNdWaTupB+X7huKbQP3wOJFPU12o=;
 b=owEBbQKS/ZANAwAKAWNNxPBocEb4AcsmYgBn7Ut0tpiNwg8/a9cbIdQZJunopxaffChO5bBV7
 y8mLRat166JAjMEAAEKAB0WIQTxi9yLbCX5CqI9UXRjTcTwaHBG+AUCZ+1LdAAKCRBjTcTwaHBG
 +EgcD/sE6Qds4MJdJXtaZcqzeDVC60vw8sK0/fGKt8X9MiP488uMAh8JT0+bLt14Tilx5sBgj+U
 HvcgrTD5qU+IZEAkRLIo7I7tGxJ0/WhXa4IBHsqKXaRz+CAAxIPZXkexTO8HeFsRzRb0AJWNkd3
 JU9IMBVgSU82sYq4Ya451T1ReBHNdwff6WX6Jb6qbfQO4p6R/0bS+ntwj8fRrcmNBlVEHn3zs8O
 0TbIKDbHnDF2CiaFdeSwBKAoM9WbymDcOqOHuHXjEDL8Wcdlh1OMM+yy8Kfc35X9IIiLHcf4TJF
 IgiRjP307m0TZsBp4wApqpQjE+hmBs29HYiXF87T72y3Gx6fIy1ZAINGawxX1yRqhMQ83Q5g43A
 C2Lxt45Gu2sZcOCrXVnttCvA4i66Ov8zyYM76Nb3d2fVLYi5N0bl7OeHmHf5x7YqS/f01e0wLoK
 L/9pvdl5b4NhCrgkuK3HfUb012E41/x/GeCKcB2L/lZsYqjfNJuj4gBhlmoSqKGEqBujbbMXr5G
 GiA0/ojdeHJDNVeuXXizAmahLTPdtdjs2I1y71L6Q37fmBbw3iEQ957rP1Cv4dtFOWZPTb/TpHR
 ANbGjp9m0UMyglMTZlYYafPEYsa6/fqLuRL8ZY9Iwh8utU1yfak2XMkUwSjY6pLZXQzGaSCOalJ
 11J0TLAL7pkEofg==
X-Developer-Key: i=christopher.obbard@linaro.org; a=openpgp;
 fpr=F18BDC8B6C25F90AA23D5174634DC4F0687046F8

Add edp_hpd_active pinctrl to the X1E80100 device tree.

Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 46b79fce92c90d969e3de48bc88e27915d1592bb..5b1b80c445404fd02e9f6e5dab207610b03ff9c5 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -6389,6 +6389,11 @@ data-pins {
 					bias-pull-up;
 				};
 			};
+
+			edp_hpd_active: edp-hpd-active-state {
+				pins = "gpio119";
+				function = "edp_hot";
+			};
 		};
 
 		stm@10002000 {

-- 
2.49.0


