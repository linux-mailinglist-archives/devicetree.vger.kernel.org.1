Return-Path: <devicetree+bounces-250590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 852F1CEA578
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 18:40:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF0093051AE4
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 17:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 886BB32B9A9;
	Tue, 30 Dec 2025 17:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dUOLxKkb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i5trDnpQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAB8932B99C
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767116343; cv=none; b=fWINcBP76SEgR/Hwy//k/Q/rVkkyTaOESNzl9LkXOSk2yW5ZwcASMGG/JiqFmqbTwU9+7qTK72nDvRr5GrBRzgclPVO7S9SSWJHiPgU9JOyfG90qGWwboevBICIRXHT1+jY4AlEBp2hPbcf4xWS/jA1cU6RJpd/YhYy/8JFr/DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767116343; c=relaxed/simple;
	bh=ct1orlHuevH9HG/+pLvUirRHI2pkY03TYbZBiXIZqYk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YtzAN+LtKw+D13AzFoNwXjCNZXG1UjwneDaNERe4CUVemSGndGbGqTRtrlKF1S7nrxcJlsBdud0OIlNQAJaZ87M8oiN6BLdEpbibnys0o2WpeNUY6zJ4S8Ld2zp/uw6lQrz+JxEVw0pgs+hd5nZoaw5AdkxQZspYh3nljWAucQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dUOLxKkb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i5trDnpQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUB0vBv3115933
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:39:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0BpUds3aWQH6EBO3XZtfqQOdzwrf7ZAJB59/4giqyUU=; b=dUOLxKkb5KvSbG8V
	mRDFQTF7jUkrQe7e4bRJ6b9mXbSm1Zy9bDe9d59+A1dUcyK7SzbBSkl2sG5dApna
	exCekB4CKdKvBxCJy+9OKiegzRG9V0gzPn+lU8kJ3z8LxEoC8fDr468E7+ropbGH
	2OAlli1zdmmMq6cFgEu8x8GxAHUTruMw1Y0wb614hVoixN+0fgrUs6XhxHaXRozJ
	CmGhFC97PD9ea+bvURWQSwPS7s1I0gHQb3gMGK5CRkdjR1oPTpEYKxsVG21FCk/H
	soY9i6IDNABsUitrkGf/mUR1BRYgVHUCryCARcOzuOqHyr41lisLUnBefeLBFHnb
	HaDhDw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc0skjhq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 17:39:00 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b6b194cf71so19086647b3a.3
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 09:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767116339; x=1767721139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0BpUds3aWQH6EBO3XZtfqQOdzwrf7ZAJB59/4giqyUU=;
        b=i5trDnpQBZalqlLdksZ4A/My6xS1hxNxtSOq4UU62RyBMEGbxaZnu9SscYWbvTkGqe
         FNIIAjFi63tiEtwYKjYwDAef0qrDhrDx3fyGtUCiGNSK7+7T5qAJ+PxgYjB2+WUatMKz
         CkWC3MX1cSsoT/wZKNiZaWy4/6fr2Jy6bvmCdX+cqS6Q/BIHZLJAA5/we1x4rRMS/IWL
         HSQ0ojyhyX93slsz/o4t3iNILJY4qwHLkPnRzubkdgmkOgnyMqku7+xThnOoiUlnZn7j
         PBTV/1bx5uRfQHjyp/Oz1sfR6wJ6xy5ctqRGGnXF/0SvNr7cJ2lUamob5RE2v6zR0GKl
         Mvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767116339; x=1767721139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0BpUds3aWQH6EBO3XZtfqQOdzwrf7ZAJB59/4giqyUU=;
        b=lVSB6aBEpi/bcZL3jYA8L5noS8W4rn8HhFCKLVdR2iXp/UQW484uokWVAqpQjeZ8Le
         6gsWLwqIlmJYnyHm2Ce5NB1SyS38g62ARtG3VkV5dhToy0sxSTrC9l/wQ+enb9wy8K7W
         QEZegTbFqVQbbfuxsIU0iPO86V0n5mjZy8jysuq0qARgLVOOs4K0MFCSSoywPdTO75BY
         X8Ut7nCFZ/U4vwiRxTqKbwNzOuz6smtaTJUFfGOW/SsHQU85EQ7EU4mVdZcjCpzQECKP
         ks331RU0SeC/JvWvy6uWKntco5fQa7NaElSYI15L0Z0aXO+sLX37weWThwZlLNtowmgD
         +Ssg==
X-Forwarded-Encrypted: i=1; AJvYcCWwhG/8DvhiVqT1rKjVik9udV3tJvVTsR6YBpWOZte/Y8R5lboT7sDtJtBKn/GL7BuuEn4Kva5kr3Ps@vger.kernel.org
X-Gm-Message-State: AOJu0YzbKY5v+6hqaGaj5Ar3sLuF1CSZqum7mpdOqpkRJMUbbGPsh5tj
	F+2/820qKlFSlcvEWgOW/Rzf4089ynQ9l5L9htHvrds+Dg1ABJtwpFyEmyZ4I/MIOB/6W3lSvBO
	9C/RWaWVA+v6Wvgk4+0rCDg0b9Pn4/3eevuiVoeTgR6POtPJU6Jw7kPP3PqDlfhEw
X-Gm-Gg: AY/fxX4PmTwWjGDTEF4Gz1W9AmzxyM45aeXdjiEPVlKGXwTG25hjG68J0G+HqxOzPEU
	gFbz7C+DkYJURVzf6QANNP1xfv7zeUemo1314fcYEp7tBGz2jxOU1tdD1edycPNaQpvm3t4Lz8i
	GCEUd4LXoWsqXJovfgvFisusHVtGNdnBYuZ027eHX+PI4V9l+nKZkft0qouV2OJ9mUUnXk51sgO
	5Q+tIMFSD2znjt1Y/XfwHkAFBu3jHcrChCfCdU56/Ramg44AhzJaznmb+nrZFDoxAyev7ZxFFDU
	xf230D8alh87CHbvSiqOcnVIumrwZhI5RzroeZg32b/OWMRDkoHV4zE60YeAEPnw3wziKkavKPG
	d3yVSRhK1PxiYFXbvD1xhM6w3ld8UTTaFkQ==
X-Received: by 2002:a05:6a00:414b:b0:7e8:4471:ae5a with SMTP id d2e1a72fcca58-7ff67456b8fmr32724943b3a.38.1767116339329;
        Tue, 30 Dec 2025 09:38:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEEmO0cWpUOJrtAy/PKVetRST5lKoFqF5dOeQsDS/mZMQ4Gq4b1Ue0MxB56JZ5LwZg9hUxtQ==
X-Received: by 2002:a05:6a00:414b:b0:7e8:4471:ae5a with SMTP id d2e1a72fcca58-7ff67456b8fmr32724921b3a.38.1767116338844;
        Tue, 30 Dec 2025 09:38:58 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af35f37sm32865208b3a.18.2025.12.30.09.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 09:38:58 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 23:08:36 +0530
Subject: [PATCH 3/3] arm64: dts: qcom: hamoa: Extend the gcc input clock
 list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251230-ufs_symbol_clk-v1-3-47d46b24c087@oss.qualcomm.com>
References: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
In-Reply-To: <20251230-ufs_symbol_clk-v1-0-47d46b24c087@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDE1OCBTYWx0ZWRfX7kLCorQCVfuu
 RgXr4DQQ/hOVPm31Kxl2H8Pszbut3rKca+UiaFjvSJDOmED/NtokQ62Omm9m3IYCR5Lgugd82Kt
 5QplW56V8oBW1CXi2yzUhB/LAr7wwbtoQyyQ3O/0o3ZLd60TDTFUcZxsqKADoqfpDbSaEvn3PkT
 RsefV4QdAgar1MKnyMVa0eTXBaLntLR28ufTVrZ8qkHowCGxdnkfH2Tw1D0+7OQL10EN24WQ9xi
 Q3u4apKtSUsEelga7cBOg5UsO5eP6jQS3CNnj/JJU3lPPxJEoXOWqO6IWbyL3WGdIW4r7ZlFnw8
 4flOGUa8AGPYCPKH+dftnij/OH8NVG6euh/TarAtWjibHSFVD0X66G8E9CDdUwbWFyABqUcOUpF
 OuhnZ2wjrvRXClZFUpmuOTDCqKdpH8fUwDzq+fZusQGrR2zGSceZ+/ekYpxey+FatnT04oKNgd/
 cFxKtZIdaFzn321TDDg==
X-Proofpoint-ORIG-GUID: l2-T0zztBxfT1C0vQvvXjNytE4UWcKZH
X-Proofpoint-GUID: l2-T0zztBxfT1C0vQvvXjNytE4UWcKZH
X-Authority-Analysis: v=2.4 cv=FJ0WBuos c=1 sm=1 tr=0 ts=69540e34 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=us8TmX896EGkFYs_XRIA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_02,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300158

The recent dt-bindings were updated for the missing RX/TX symbol clocks
for UFS.

Extend the existing list to make sure the DT contains the expected
amount of 'clocks' entries.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index bb7c14d473c9c523e1501f9379ee7049c6287e96..21ab6ef61520695d977f9d741ce633cf537171ac 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -834,6 +834,9 @@ gcc: clock-controller@100000 {
 				 <0>,
 				 <0>,
 				 <0>,
+				 <0>,
+				 <0>,
+				 <0>,
 				 <0>;
 
 			power-domains = <&rpmhpd RPMHPD_CX>;

-- 
2.34.1


