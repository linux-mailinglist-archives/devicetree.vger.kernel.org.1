Return-Path: <devicetree+bounces-207482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA965B2FAFD
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A9E21CE6607
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A416E346A1E;
	Thu, 21 Aug 2025 13:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="keCbdRti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771A034573B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783459; cv=none; b=r2v1IJcg4CHiNtlh/TQuLyyEx5bgzvF1WWGxqe9yx+/ZYB5uPAkvOD2F21HS3geayJGF3cbzkYloX4zwaOjj7hNY2s5I1UgqaHjSvQW6jiwEBe+8y1UYNesHZy5QSM+9+tZ+wyyzQdRU1ud29lbzNZgyMEA+RlaqqZLwe1l7JK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783459; c=relaxed/simple;
	bh=33V6vO8dY2xO/0hImlUa4h4K6tSixB5izhQ3YWGUhF4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PA4JVQQc6q24avz9JpMJ7zYYW/i7x3F/z/zNbiMsLuHmilCZp1gbCfB51AWHRxlvALvyxZyLgVRcU1gcYI2PY2bJh3z3Vq4jIITQ4LzJYXdGkVomLa5h7ESuQeQd2yRFZWr3lFdI+NY/MXndexYexJf+9WZiY4O+iboXh32EHa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=keCbdRti; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3b9d41c1149so600852f8f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783455; x=1756388255; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FN3M1ELHzNZvl0HLZKgIMT8AvEW6zwa4QCuopr7VTZI=;
        b=keCbdRtiNSgAgT/Q5bNHzXraBNBzHO0WrjwT4rwgxyx6RHe/9Jr1RRkZKpv7ujR4Nh
         dXgm06WRbOcA50CTlhGezYPK7y63gVTGsJprv09nU6hzQiJiTxXRicYev5UnBlDjf5t8
         GAt6HP3oAGl2kW0Qyni7vLfcUvyg4RDYShMOVMioabZdcKFhANvnL2kHIF77Lyj2U946
         8DrY1C2BYRflsOHMPMXIFxesgeeIO342Opxauip3yjze4dqSyg3Mrt9YR63bU36B9OtE
         VgINz37k8DRcAHVU0yJvKLWhPEGNZeHjDD7cZnNH4Jw3wSnlL9B1yca3j7P8IHQes2bp
         Topw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783455; x=1756388255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FN3M1ELHzNZvl0HLZKgIMT8AvEW6zwa4QCuopr7VTZI=;
        b=EEe1W3LidlFt1WuGKvyoZ9JJV39Tjc9dE+MxWFnJdHiqbxUBFyBdjZpvptnN7t6yap
         vaxoRtW8pXN0/TP5QlanLlYJZRxqV/0C4GZVjRwI08Jz1ZhY4DglYzt3i0ecwcILb5Ap
         wpIPbVYDWodZB6n9y2WurJe0BxavQtqcET0xX8M9lhE3YPTiLHobC/1esGlZ5TriBJAg
         jz0bMeUJ3MUBYW3jn3CHMjtuloJhOVFqahkdq0gS7N2k/yPkadlJrbWaaLw7S0v5Ud4e
         kvcL8VgYUrWAJpGhVl7cs7MvYoqM1RT+SpqzDM09qaZ16CPhKMS8hI0zFvKGYjyNxb4C
         V9+g==
X-Forwarded-Encrypted: i=1; AJvYcCVlJEOXITZH7nMnqKCqGwFlemv4Q34yT63IdZnF4e10XGcFIx4vb4Wrp+hDyYQV3bR2lO6lzd5YQTkY@vger.kernel.org
X-Gm-Message-State: AOJu0YynjhGDeAqgUN8L/4HETkqOGPq3/auO2N9hyxNSeWfAn8DLQv66
	w1WkuXLuHmvo69xmr8MW1dqM4AHVapUaWvSq7+4CC0HiA0EoT97R5VdZ5DB4JquXZgo=
X-Gm-Gg: ASbGnctudq+etVefO/vST3wm79DxCTZvCcwddz5kE0jyEqWJ416umZEmSISvACDxfgJ
	D3YhUnQ51YDvTxYeFhHnHSnH6rgtPc3DBczxhhuOH/z2g+smlmQsEdlZyDaF7PRRJQQ+f9letao
	KUDOrCBiqte+wiRE5+w56rqq4E93iskGxykNHVEcbbgV1z95M4MkGPuTJvRdPQ+RJkuDfbkOYm+
	7POturpzKGCl97eVEdaMZjVXiR4/kGJPnOuUnFuhcXdIoozPmE+qL8giGIfpdtvhUTC2c52iUTE
	LesWJCsOl3YTBYbQ+QEJoieBjZ5WvodcJifJUgvw86nc+FeYvZ9EDTz2AZ4Tq5hP05FUAICrTHB
	T+do/SjqZDCCREzqDo/3GJ4GFoZxWWnjjMa6eeTtZwHc=
X-Google-Smtp-Source: AGHT+IEZQjhC7XeqnXNCleJsATeP//d/zJRQS4uFjvJ/BLGBre/bly9A8aoj28lhG4LujxbvPVWfrw==
X-Received: by 2002:a5d:46cf:0:b0:3c5:406d:aebf with SMTP id ffacd0b85a97d-3c5406daf16mr1220179f8f.63.1755783455527;
        Thu, 21 Aug 2025 06:37:35 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4db2ab4asm28937605e9.8.2025.08.21.06.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:37:35 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:37:23 +0200
Subject: [PATCH 04/14] arm64: dts: qcom: sm8550-hdk: Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-4lanes-v1-4-0b1a0d093cd5@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=734;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=33V6vO8dY2xO/0hImlUa4h4K6tSixB5izhQ3YWGUhF4=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyEXr1VEslWyONNVDdpF0ska7gFINWifaa1BfQB8
 OYoFLvWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKchFwAKCRB33NvayMhJ0X9wD/
 4342OclvtVQwK6qp+mEQZjxslzW+BxFOiVncFvE8qpeLBQmZPy3HoTVxBoXud+jcRsR9C6c2Cloh9p
 7cTJ8PMD+ICsp0+sapRJnNJtzRkFlx8vLzrueao26mnTNPnKTsbJtM9zeo+aZRERMoKlevHNPtqAyg
 BFVl59DkokTZ/tEMV1e27NVl+ni2jatJ1b/98XxyDJnU4NgGyKxnnqjdr84+ckjXGfCjVlvGB9VNwn
 t4D4KrMNwIF2/AFpGBC/GJ/R2z9FlZFFH7+tlI3/1f+1Vqoxby+A5TrDrR+mzXp+iyCpGkuAlstILs
 R0CdGEgMvB0oOD9bHySDwkzs8Y02M2rBx6RjcVSssYIanZiOGxBM8nCzdU7vGYFuGAERXWlIR+RQZC
 dVSUPXHkWaLpt3s1MbvAeP578cvUT75B5fVm3aCnl+PnzqW+AhZqhoIR+POSQfRKZe7IoH7/Kxik6K
 RjsQPKx0+4ubC9jjj+2QnQK737Q/exHLB/wn6XATms9XzLaqSvtud/tp9wK+TZjI8G3rxzT2uwZ3Kk
 aKQMqpvlcog7GmpuVqV8sszCf8xgGo1vobfPUOFpLjvOsylMk8SZzVEoIqvp8fY4Lp+nzW0rTycUue
 K7PaBVmYP/b2ojt+cRcFBf8FeRgtNfP1kx4KddgeyGgcdmQzpcNWxSscCbbg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
index 9dfb248f9ab52b354453cf42c09d93bbee99214f..6c2c9514a7396a8b75ebe24585b47571c74ff568 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-hdk.dts
@@ -1003,7 +1003,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 };
 
 &pcie0 {

-- 
2.34.1


