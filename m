Return-Path: <devicetree+bounces-249487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33196CDC0C6
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 11:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8B453029235
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:53:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99C9631A7F7;
	Wed, 24 Dec 2025 10:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BRiG84RN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YvuDym8s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02FF2F999F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766573630; cv=none; b=VX+r+ObYZVPxA7VO6ZUH1eELnks4JgpQygf4/fXdHwerKqPU+sOe1Zen8+4mCfPIZMKWoWnpadOiMUzfrJAM7uDjUAu0tFo8SiYEtE0qsZDqW8cQ3rywIAi7qy4ZYXg1DpmYvDZrFondFHkywLsavW8Uc80/SZVGqr2ruOKZ8H0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766573630; c=relaxed/simple;
	bh=UEqwWgA4eY1trHsHO9E8LHZDjJ0i6VTelWd/QktAPfk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=d69g1HmTYivZclol/XKi/GMyFW3btLOIj2b0Qq2YuL7U/+W+uKMqw7rI+4H9MKfimP+qg05hfyEdTKwn7Gw+4ovhXA5xV7YH4Ne4ie54b0h7nwM6LXENYYrr63+LWHUtcYXHxDGqNx36niET+P58lFcUcpEBnGYlp2zwR+W61UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BRiG84RN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YvuDym8s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO90v6d700441
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=rieNRr2oJhj28iSYb1CzIg
	qJgKQi08tHB8PfRxFDRCA=; b=BRiG84RN7bl3xX391ojCSvhkM8FnI5cZy6TwTj
	Qby9Sgg6TKk9NBwezFXqDonoBgJOHJEmhXQDhRUlZkq5LjhaLs/9osm2qwa8KTwl
	eEc8XCtpGfJy1fk9m3DgTMZgskJOxXudbRtKy+7yIV5meSDUUOQiVHY45COpNBWq
	AdPg5C497ebE43WEXht3AxP9Jq9mX8HiOQmuoVRjvDpfvjqXJIGprCwxPnqxtXim
	guF6ZtsKQ3fyON+DuDhkCZWWFKRiJyxqh80aLRLU7+uKaGkRqHBOkWhF9C67lXdp
	FnzOnuo4vL6NCeVKrZYd7pYqmo3iy8UM8pdhWYEy+Z/KmP6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7t7jufxy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 10:53:47 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee21a0d326so35093311cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766573627; x=1767178427; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rieNRr2oJhj28iSYb1CzIgqJgKQi08tHB8PfRxFDRCA=;
        b=YvuDym8sFHOizNlC12WDMuGExdWDSgAqO/+y0BY4LmjsnB8dhdGlpQ64rphrqG2G7S
         hQXOl1K1oTf5OZIy49hJNvpY/ZFHQQlecDrYQWHieQWbOBHYKwmi7il/0hrVhllFO5jJ
         e2ILtSO9KiP1oOlorJ2a7i//lqp/IjLUHRltIzbiZ/HnNPNlzj+VQ69p+vzp+/CDo8ma
         2JCvhmT+wI29jff0EIPOC2tG3IEOeUfdVkprJZCk6M4vuNwYkGMdwLsVd98n7q5yjLML
         8qzPSfJafGM6cCrFzDz5/qBIae9RSeP3xV4TUaPlc973Nqvq3fAFUFRkLkEFGTNXPVQb
         nuFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766573627; x=1767178427;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rieNRr2oJhj28iSYb1CzIgqJgKQi08tHB8PfRxFDRCA=;
        b=BMTso7SlHGU4Fp1VIu63E/+oU0OK4+HVPWivTRMteZ3ibKWK6oXQuCBih1BE6QI+id
         u1zlvRpJo9oKj7svksbjQBk7D53h74h0I+KFSR/f0arOXhHXvo/rVi6N9s3mVdqz23DP
         eXhl937RXlNe9BlyQzvNIeBtfndnTwQWbXR8Q1YzP8a+ZAHBvNxBOnHT0poHOKKcPLJy
         zWsr7aPT0zs88z8XcoOhbmSUuhawpwGzoL90o1QksMqNBCXX0lqemQbjqX3osMEjb07p
         RscWHbaM9hbDhl95ykbBy6+Qp3DgwZyEUTHlNRdGA/Srx9Rwfo5wWS98yLsYsc+jjOys
         4w/A==
X-Forwarded-Encrypted: i=1; AJvYcCXhcU+jR165xgeCuMB2udfbN8bPrkxbvpQOCrHnZvvkDqOhWwn9hEDCFYZtt56LOK/s0HFa1H0rWId6@vger.kernel.org
X-Gm-Message-State: AOJu0YyNsbb3ny8s8koDzG1MBZbzug93SzIAzaHU9y6OL4Vs8V0PgKjC
	ishqRnaYZBsbXBHPlOmrJNsg3k5R2YJ1PZq20+rtEMr8pNRloSm1J7R9Uzp4czmAAKVxQi/Tjge
	n69y1sn0L6cob4IuMV6V426j0b/Mi+uCAY+zV9hRonJwCpZ2RtXZpXjo/8AZbGqk1
X-Gm-Gg: AY/fxX4CFlzY4woWAPyB1OJzzWSARMWTaKUpB/JcUuHfgSHcvLso2pfd+uOjj0aEEof
	9zJrv8lla+YBv0WZupOtS5gRa9mjG009pUQ2L97Wi/otaT0MA94EmsKk1OPVnrftt96MIEATJqM
	/wucuGT/QMFp8MBm9oUD37rzVgsSNiiuQIb3Zbl8dod7XEFJO4cw3ds0HjBK9MAyOwliKxuflN4
	GomD30MF7rEgU7opXLqW2FiseT7L9J7uL/tt+9ZY3nltSb21/i5QQWISNmx7pW+5eC9nfVJ1WIo
	r1bCimdbzW0XDkP6kBBENj/EWADksGUvnPJtShAye7MupE6n1uz9u5ulzHBsg0mzfYj6VUssc/+
	27MMFHXEWEp2M5EY=
X-Received: by 2002:a05:622a:4cc5:b0:4f1:aa2d:81cd with SMTP id d75a77b69052e-4f4abdb8a8emr240490351cf.65.1766573627128;
        Wed, 24 Dec 2025 02:53:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETazEDbIJBda+GTQOv1dPkraEbLtIPmiNvRi1Xo42NQLnzp14Ln+KWlN/ubdXGJHfrZEKtkw==
X-Received: by 2002:a05:622a:4cc5:b0:4f1:aa2d:81cd with SMTP id d75a77b69052e-4f4abdb8a8emr240489931cf.65.1766573626483;
        Wed, 24 Dec 2025 02:53:46 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ab86cesm1737562566b.19.2025.12.24.02.53.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 02:53:45 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH RESEND v5 0/3] phy: qcom: edp: Add missing ref clock to
 x1e80100
Date: Wed, 24 Dec 2025 12:53:26 +0200
Message-Id: <20251224-phy-qcom-edp-add-missing-refclk-v5-0-3f45d349b5ac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        stable@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2646;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=UEqwWgA4eY1trHsHO9E8LHZDjJ0i6VTelWd/QktAPfk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8YuxWVgYyB+jUMg7b1RFEbY4P4Sb1KSxHbhC
 mqlnZRveiWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvGLgAKCRAbX0TJAJUV
 VqYuD/9fo1rl9jefHGu1DOuP1zCkKx/VCFfo11G4rK3IbF+SvrgGxuhjJt/JTS61IlY9aYUG9Aq
 c6KsVkx9AOrudP9CwQmwyBLsUzwP6fLh/id87Jsik4nfOtKOhIXUFnwKGLhENA3115vwsClW7gm
 OWnc4KgYGRNCusTXGj4uTLnnkA7Dfu48sozRXxX2lkV9XsxFCSchhoXtvsDnvPrb6WebPRJLRAt
 2vSomz1pKG1UBn7SkFYktcXi6iv4jmGBQO1D3GtFmDfHysUEdMaqCLIOw5aMRy7Cqa+GeTOyEV5
 ob2WH691Yl5oZjQ7dGWMr3DDCFay6N1DYhgZl/EWsoJAMGdhXH4VHF6vUcQwQT+sLjfxIcw/rXv
 J+iPdekda8KhW+LYlnwkbwRoEe0ouL//xmt7D774kVA3OP6+1ETQ0QUfAL9X3TICwEq41bTdr40
 +2JfnqOWmanzno68eZJaRnrnrojtYGxpK5QAf2ec9SELNKJ9qW0O62qHaYP+JKiXqxNM//iYoUA
 /MIWnZdumi5eXxAzOyHCcCwCkAsDktL1MgYD1EGLPIPYL9PTqz45Ad1tN31m1cIzRynIXxyBKAq
 VMbE3J/HmRnMQo82VT2QnUrh5Bv+auNJC2STZu6DvYaFGThQBIfyIru+S7nDOa1TCV8yBSKU1pb
 r/nkegwmlCUd49g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NCBTYWx0ZWRfX91UtnJuYMjYa
 6K16xhgg2jeP55BWn0wHQDamAHRdA0ykFyRi5P2EyllyA/1XD8fKexIIUJrDsglCX0mPMTf77sm
 hUeJaHM1Amlq3Ut5S7bR8DlmnWw1vHvWPkq5QG6SaYQvQ5jjpfatGfb5LRo7sUh8MXTLwkbQM/V
 4aJPogXDhvF+JeT6H4tSpa8phwrtIUIOXM4GWzxchGMwxsW1Tm0bzB2xzdZUwye3zygzARAAcoJ
 zX+s9GL3nfu+cxCowQNAXi450iuW+BPiqTE2dhCCzjwo+qK4NISCiL3AajoukqYBLgxLMafYcO0
 2nSborH9j3QR5Jz2UkfXbw6a8xjlUhlJ4BpgAsxj5T+4vsnhfXBSz4IuFQvqDINMJv2N4v2AtzV
 e7qpbRvsrVKzbjfr0rD+cXT8S02fc7WI0xJSxUsOKc2xJ+cDriXSr/9HJmK/SoyPFfdD3D/Hu4Y
 tEIN0fhVfxwPWX69bPw==
X-Authority-Analysis: v=2.4 cv=IvATsb/g c=1 sm=1 tr=0 ts=694bc63b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=n6KyKBFS8jaI6nepwJMA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: cdtCRWJrsKK3J37_UJCXc0EhRUxcDmV5
X-Proofpoint-ORIG-GUID: cdtCRWJrsKK3J37_UJCXc0EhRUxcDmV5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240094

According to documentation, the DP PHY on x1e80100 has another clock
called ref.

The current X Elite devices supported upstream work fine without this
clock, because the boot firmware leaves this clock enabled. But we should
not rely on that. Also, when it comes to power management, this clock
needs to be also disabled on suspend. So even though this change breaks
the ABI, it is needed in order to make we disable this clock on runtime
PM, when that is going to be enabled in the driver.

So rework the driver to allow different number of clocks, fix the
dt-bindings schema and add the clock to the DT node as well.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v5:
- Picked-up Bjorn's R-b tags.
- Replaced "parse" with "get" on clocks acquiring failure.
- Link to v4: https://lore.kernel.org/r/20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org

Changes in v4:
- Picked Dmitry's R-b tag for the driver patch
- Added x1e80100 substring to subject of dts patch
- Link to v3 (resend): https://lore.kernel.org/r/20251014-phy-qcom-edp-add-missing-refclk-v3-0-078be041d06f@linaro.org

Changes in v3 (resend)
- picked-up Krzysztof's R-b tag for bindings patch
- Link to v3: https://lore.kernel.org/r/20250909-phy-qcom-edp-add-missing-refclk-v3-0-4ec55a0512ab@linaro.org

Changes in v3:
- Use dev_err_probe() on clocks parsing failure.
- Explain why the ABI break is necessary.
- Drop the extra 'clk' suffix from the clock name. So ref instead of
  refclk.
- Link to v2: https://lore.kernel.org/r/20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org

Changes in v2:
- Fix schema by adding the minItems, as suggested by Krzysztof.
- Use devm_clk_bulk_get_all, as suggested by Konrad.
- Rephrase the commit messages to reflect the flexible number of clocks.
- Link to v1: https://lore.kernel.org/r/20250730-phy-qcom-edp-add-missing-refclk-v1-0-6f78afeadbcf@linaro.org

---
Abel Vesa (3):
      dt-bindings: phy: qcom-edp: Add missing clock for X Elite
      phy: qcom: edp: Make the number of clocks flexible
      arm64: dts: qcom: x1e80100: Add missing TCSR ref clock to the DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml      | 28 +++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/hamoa.dtsi                | 12 ++++++----
 drivers/phy/qualcomm/phy-qcom-edp.c                | 16 ++++++-------
 3 files changed, 43 insertions(+), 13 deletions(-)
---
base-commit: 131f3d9446a6075192cdd91f197989d98302faa6
change-id: 20250730-phy-qcom-edp-add-missing-refclk-5ab82828f8e7

Best regards,
-- 
Abel Vesa <abel.vesa@oss.qualcomm.com>


