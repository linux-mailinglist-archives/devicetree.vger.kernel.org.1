Return-Path: <devicetree+bounces-196369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCDFB052BD
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D9CA188CBC4
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2922727F7;
	Tue, 15 Jul 2025 07:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qk9Ll5Qn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0183126E711
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752563959; cv=none; b=QMK8gyxyehE0VtFcxpVng05DBaFqVmkEUWQFPwTISpcPn4E3TgfnMQMiPtbRd9MgYMzL5bw4OZqws6dAZsVslEzzlG9poQjSXDXEtfMNm05/GSqX2poMjBCNfeEQOeYTiqsvEO3ydX5TR3kZMgNZMLG9ZOckYW6csUIEUomD0lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752563959; c=relaxed/simple;
	bh=psJ+r2ImoZmBoHA4zdUgLb2oClrkqttP+Gxr4glxjAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=umiq+g7RwohKvcKKEzS1BA2UpQsJy1oIrBmN9qzk8OyQDWFsVvCUcUN656UyKT9E3k7/6poNZO45kEgUV6oxi+IkNZaUJoNZS74QYkumRS3wC8ZuMZyik8I01PNipkYNByCarWPU3++gnhxiNRHgFok/jpOB676nayXB98gVoxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qk9Ll5Qn; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60c5b8ee2d9so11046600a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752563955; x=1753168755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMv1g/4xWEcgXsrwCQ9m14JzKLwJ6yUkFVWLD5shGbA=;
        b=qk9Ll5QnsWViRlfsEU5OEhtBYECacnzRN2oTEE2ysYcHnUcj8urFVKmztk88YS1dL5
         ebOqWYmoXGi/3sqPhjqWtSZmaLuFfUF0wxjPB+bB32iN57vqYJYOIC+7EQZpOW5EjI8a
         0hieKZBh3BsV78tMR6Hz5JyiyV+zRj6dY83OF37upVWQ0WOpK77prTOhXCcZE0DHtpI8
         yFtM7U/TJHWLGBMAI6ggHWCd/Disnmel8D0zcZBaFXU7ZIPd925I83gZW1OZ77sAyILF
         RQ4CCtn+tCPZnA+GaWM2LyB8UYeXnKewIJa9T89gftAlm9lICvkv1Wh8H6F6PhRbCntE
         jOMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752563955; x=1753168755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMv1g/4xWEcgXsrwCQ9m14JzKLwJ6yUkFVWLD5shGbA=;
        b=dvv+rnWf6Iq73panODOCkj0llzL3Mpna4seWwv402AVJvZW0syH/7DK9/7vrTQisH1
         jCGPLwQxPg+s8OQ6/jmHmbtKDOpgs6SrlZJrHRtUhL4VxMnqUr3Ravm+C12iaorpzE+4
         JQvNEu3qyUcf+2pJ9syIbtUoRD1917QRT/iK5yh5+bho1xsjSIlWlAI3FFnxn0c2KNgS
         pogO3DWhGdpqCXZJUXBrXdbYb2IyRm6ZB72eSv0Y47kIPqmGBUnrEhSSGIHMmUzxzjG/
         6vreGDMphDoj+MpIZDw++fxQLTePjFElGEyhCA2CNJ7nvyDkpmYd3G/LH3iEGg1LVAXs
         +g2g==
X-Forwarded-Encrypted: i=1; AJvYcCU48GGh7bBdRCHcQ8S+mG4ixDFkRl1Ircb2FiyS9vn8V0B+lU6v9nH27hnDfb+TJ9AzpJgvLr0IIhBx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0csjB2rySMFnpynMQt6Vv/dGfzhOiupsSZmv3W8ta04rhLqJR
	/CAlRcTAHcLoL9liQeOlk1ACY7iSiZ1n6pAhMr4G2ZwByGmTGeJcSBTOLRNx/Z8HpgI=
X-Gm-Gg: ASbGncv/S3rY7lEymAK96IWmVMwsE+obROPmMpNsjzZc+31zPbFc0kZrwxpIdGivu2N
	+A9XdSE6vN7+JNdD9RZQ9G7zmfqwl3cthaaJgxkN+/ON5Tx0ges8V2ButUAxH8ZxlFlZLzVr//Z
	8zYnXal661k5M4hLcToigdTG6KWgWRp/tANrPoxvwC7/XiH4qwFC3yhNpCmmZUzR90zmgk7hwml
	itHtRDmFkcHCaWtygqZZva7jFK9oV9NnQZeOwYV4d9xvm8+TIIQfxtm60qm6tGzlh7ikeOeCz6v
	qlsIsFPf1qCsw7fRMZTdxwOE94JXj0CYOEcN97gowQn+IdNHG55vOX7t0MK4QFyZ3FsQZccQQ21
	yEQ0Rrj96YPL7b6LJfxQlPtkHwy5xdnFNsapugZaQLcUF9SIPLcQsC4UH
X-Google-Smtp-Source: AGHT+IHpzr9xs15UBBhkVdWk8bxk5mgehJ8oh7sJmIrRWG5EVzGAuNGZxy1NZTNWFPdBemm1iy/dOA==
X-Received: by 2002:a05:6402:3592:b0:606:bea1:1740 with SMTP id 4fb4d7f45d1cf-611ed13763emr13608342a12.30.1752563955238;
        Tue, 15 Jul 2025 00:19:15 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c976fcfcsm6873715a12.66.2025.07.15.00.19.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:19:14 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:19:01 +0200
Subject: [PATCH v3 01/11] clk: qcom: common: Add support to register rcg
 dfs in qcom_cc_really_probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-sm7635-clocks-v3-1-18f9faac4984@fairphone.com>
References: <20250715-sm7635-clocks-v3-0-18f9faac4984@fairphone.com>
In-Reply-To: <20250715-sm7635-clocks-v3-0-18f9faac4984@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752563952; l=1501;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=psJ+r2ImoZmBoHA4zdUgLb2oClrkqttP+Gxr4glxjAs=;
 b=79eL35M8icxQPB/jFzX+kSwTtYQA5OaBAVN5caJm2Tycf8ypb1YZcGrQvqdoyjdcDg3WG7qbg
 x6e3ybH2EixBPJ0GqsmenABcxIHf30H4LBsKZV/yILp7VE4/d8UBgg8
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add support to register the rcg dfs in qcom_cc_really_probe(). This
allows users to move the call from the probe function to static
properties.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 drivers/clk/qcom/common.c | 10 ++++++++++
 drivers/clk/qcom/common.h |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
index b3838d885db25f183979576e5c685c07dc6a7049..37c3008e6c1be1f083d0093d2659e31dd7978497 100644
--- a/drivers/clk/qcom/common.c
+++ b/drivers/clk/qcom/common.c
@@ -390,6 +390,16 @@ int qcom_cc_really_probe(struct device *dev,
 			goto put_rpm;
 	}
 
+	if (desc->driver_data &&
+	    desc->driver_data->dfs_rcgs &&
+	    desc->driver_data->num_dfs_rcgs) {
+		ret = qcom_cc_register_rcg_dfs(regmap,
+					       desc->driver_data->dfs_rcgs,
+					       desc->driver_data->num_dfs_rcgs);
+		if (ret)
+			goto put_rpm;
+	}
+
 	cc->rclks = rclks;
 	cc->num_rclks = num_clks;
 
diff --git a/drivers/clk/qcom/common.h b/drivers/clk/qcom/common.h
index 0f4b2d40c65cf94de694226f63ca30f4181d0ce5..953c91f7b14502546d8ade0dccc4790fcbb53ddb 100644
--- a/drivers/clk/qcom/common.h
+++ b/drivers/clk/qcom/common.h
@@ -30,6 +30,8 @@ struct qcom_cc_driver_data {
 	size_t num_alpha_plls;
 	u32 *clk_cbcrs;
 	size_t num_clk_cbcrs;
+	const struct clk_rcg_dfs_data *dfs_rcgs;
+	size_t num_dfs_rcgs;
 	void (*clk_regs_configure)(struct device *dev, struct regmap *regmap);
 };
 

-- 
2.50.1


