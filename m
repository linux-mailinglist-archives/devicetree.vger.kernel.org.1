Return-Path: <devicetree+bounces-234157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 350C6C2939A
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 18:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E28B23AC57A
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 17:22:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EEA02DCF7C;
	Sun,  2 Nov 2025 17:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aTiAtuIs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SzYH39o5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99E52D97A4
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 17:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762104146; cv=none; b=S0AojoBPd1/UwO7meUJdT/i0FfSxvVMY76aTSkAF1eTd0fpJw/AzdoZEeBJGTf/s4LRJlz/DCupwrpiw7QnuZKz68Edo7oEy+yr1bKBywpKgk4Xiz/sQSnoE4D1klghBU8ZafgJwAIerXJXDchuY2+2XnOJvD7+zuyMdj58oflU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762104146; c=relaxed/simple;
	bh=GUi0VvoAqlJtK8mZQS2GJfgbc8dbqvZZhbH6IMuUl/A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=K29BXc3D6hLoyNSpZefBJmW+h5qKdEXFPvtKoIIIqMzvas6UN2Zgm6wb0pSFWKE5YJP7W3hwnSu2CC6lV+FagCVRTKbpDwfeeLUy7tLiq5bPwdVa9xb998mqHPAZzpT9SozoEl3fg0t0/byJS+X5s2HzC1QSoR4XFrApNm0CKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aTiAtuIs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SzYH39o5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2GflJV652787
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 17:22:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=hmNgUEvgxKylekid8MxysP
	Hp/0OWG6pTbfmNdeFNquw=; b=aTiAtuIsbyPnQHWqzMjnGED1/QcqaIjqyPDlXt
	2NjJCXPDkMZ/fwOnKw6uFGbsTNRd3f953oXALPAn49wgJB769rmJu/kQ1M749M5T
	MB4gg6yMfH31TnedvwLoIYGeCnI+TT8b72FLqqoxW4M4bwLELecb6wPK6m9P07Dr
	IkPJEhskXv4NkeGF1VmzYG9jxDSnwMBhOR7AEF5/QMpmB+BjzWUxgdb7GX7Sa+Tc
	NDcKy36rUUSug3bIfPBx0aPqeM+yQS/f6cJHVcJz4/3evi9RcVt6ndEB/rq6JHjk
	5x+UsW5B2iwI5H4BMJ/GWrJuC3v98hjDIV0ArnbQO35ADS0g==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a595rtfu6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 17:22:23 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7c2827ec9ebso6719517a34.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 09:22:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762104142; x=1762708942; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hmNgUEvgxKylekid8MxysPHp/0OWG6pTbfmNdeFNquw=;
        b=SzYH39o5iSLEgx+qy+bp8/+EG+0Z2P4PtU/wcVRVwnAEsBT/Sp/XeITsbFkoX/8gzC
         AoWkD/qxH82piDreHPUtxKaUP3K1aSmUrW5IHBLQuePyIstouqDuCGZM/XQLT2JENv60
         Vip6+KfUFNWDoGGUzfeU+pBYwRxG0HE962V4usGoaH+4MnzssQ75qNTGSw1lLsc9YUmb
         WD07MHgJ6utE45iqf/iaqlANbWGXNw8+ckiVwfnOfhAKJmVexZBe7kexnAgVL77iJF8Z
         YUGRZ1BYR2qg3zN1gsyLIM4iJCclmubAtlPGE4xWVkzREXEm/2jrFEGHs1Km6KhqG4wU
         3ycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762104142; x=1762708942;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hmNgUEvgxKylekid8MxysPHp/0OWG6pTbfmNdeFNquw=;
        b=Kov/8GMmSYmy8xbz29GhnunqS6l8Kgh/myovt+CVJ4YVV8y8S2DAlG/CRl9SQo/FKC
         GIFSX72iV668ZbIjxke66xeHLB+aoF/76PVlK+M5mUhh6p42RiSOaiHZUwFTXHdgvXO8
         ocn6nJHdbYGgjkiFKoA4PbU/V3LyjQWyn/2YJ4eKWWXmpnAOW2B35wnDj+DOBvpQZa4v
         ondch2FfylhAYlSGoakRJeDGMzdaN1492E1Jec7KtRdMJSHjHmCmfQlPZX0EET40Z0+p
         JOXqKIKHPHmK3tWKlwpdKuYkfBKQnejAkFhRGVioZUdzgUwQHMKKZ/MWyUymJfR4QBjN
         40eQ==
X-Forwarded-Encrypted: i=1; AJvYcCXz4WZsxfZ9m8eX1o8qbwn7RWMDC5lPmpkwfUy6IxJXwF4U+rU0lu3bjfFThwlGMDdDHnzKCLc60E43@vger.kernel.org
X-Gm-Message-State: AOJu0YyYxF2R6Mb6GqGMxpbq6p+o6ojnKkJEWxBttnrYuz3DASk3TjGP
	oP7lNfrvuNUYtq/M53A6TpmDbagJtDiFdN+3ss9HtPfSq8ooSxF18RriT9+x7oEfVFd9D6OnNbb
	kYDEVg00xzEYNFdrCz3P+YVgKOhTBsm30qcDeEYaTvgdSEm7QtpBwjez+dbafKrcT/jJy62dY
X-Gm-Gg: ASbGncsXejuLdWuvgdTXLgH6OybBm6JUCFTYQJQvgEKIguBWvUDuyeVDkocK8fpGwCj
	6wDnnr3xJNZ6PfYaN80/8sH679W+HzTKk/lP4rH2ww42ZlEsFNpE9fkAdR4tzIZzDo7sRR0bZwO
	Dm4Im9ZBYiJIxui8kx03L7bY/9M8q8hxqWW+4KDLpSax00R/czTwCRTMDCqyfJJN7StWfs4KI19
	eSoj3lQWm2Mx/3BgE5zM7VOdCjOPhiUOobWTxD7hfk2z27qftd3iKg6OtQ3iXpX6CRuavpyHX7r
	EHO6M2x/HjPrP1XovZKHq+YQ6KwZ4dxbmBCW70myv74730QBaxqHlE85AIheNzcQkV5dgEnNJ+c
	ERAMiakx0EREqzTrcTAqCuEVHC9xztU5xR3dQzcH4aBZ1cQkYAhFozOlaInAZZ0SbfMMgXgt70Q
	==
X-Received: by 2002:a05:6830:4905:b0:745:9769:ea51 with SMTP id 46e09a7af769-7c69638422dmr5290703a34.9.1762104142345;
        Sun, 02 Nov 2025 09:22:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqsjDHsH/k3fTsIN2LZFLLEZQO/NJGaFN3F6Y/2a/SSBeC3fVxBDVK6n46HYSsBm4W+AcEiw==
X-Received: by 2002:a05:6830:4905:b0:745:9769:ea51 with SMTP id 46e09a7af769-7c69638422dmr5290679a34.9.1762104141931;
        Sun, 02 Nov 2025 09:22:21 -0800 (PST)
Received: from [192.168.86.59] (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c699bea5a1sm2253213a34.2.2025.11.02.09.22.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 09:22:21 -0800 (PST)
From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Date: Sun, 02 Nov 2025 11:22:20 -0600
Subject: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Rename vph-pwr
 regulator node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251102-rb3gen2-regulator-sort-v1-1-908879d240be@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEuTB2kC/x2MQQqAIBAAvxJ7TlDLg30lOlSuthAaa0Ug/T3pN
 MxhpkBGJswwNAUYb8qUYhXVNrBucwwoyFUHLbVRSmrBSxcwVmK49vlMLHLiU7jeKGud9NKuUOO
 D0dPzj8fpfT+f8CaYaAAAAA==
X-Change-ID: 20251102-rb3gen2-regulator-sort-d45199d0f09c
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1582;
 i=bjorn.andersson@oss.qualcomm.com; h=from:subject:message-id;
 bh=GUi0VvoAqlJtK8mZQS2GJfgbc8dbqvZZhbH6IMuUl/A=;
 b=owEBgwJ8/ZANAwAKAQsfOT8Nma3FAcsmYgBpB5NM/ghXXaghVExwcNKDvS/q4V2Ol2XfhcoHp
 XoiECwIdBaJAkkEAAEKADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCaQeTTBUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcWSmhAArXO3PmJw+OUHs8lStADJNC3lnRAecqhFkIs5vi0
 X1ov19t2W5sB/2i7E1EjOEMrIz2hSCSykwJF+ukBL2Yi2P88OT1cKu7bBpNPVaRC8ZTQsXzi8R9
 1NH7yN/+WkAN0chwt7Kz6FHQULTTUzKI1plsxUHfkNsaW9qlADgI5h1ftwKEPnC+1S/J/0kUIjX
 E53ybV4wwBn1udSRuVX/zg+Aqqb9Dg2ixZOKwA+jUSbRve8gAMf9HrzEb355oxgr4Yd93ogzi4C
 bbTwonL++3hh2gjgh21Vr5amfi59Y98uuj/xys+STsySSsXQUSoDMeDgFl6jkqSl9kUMCV3sAYB
 6FZP5wTs+jk4fWB1lT3it+XEfKo72QaB7BOgfMyZCW4if6ZYOIsLF9+VjHo0vhi6PX+I3RCkQ9y
 +RpX6VCOpYjPC0TIRtd2U8O7DhHuD0Ey9dZxm20tzlPKt/nm5iKh7RkEuY2zjBAPImm4s3PGx9i
 Okc9/dvcNtsthAhiQinwgUuIPQBksijydaPfkmScexrb0ckaEewxBFne97IxS2546kT0BxbWZk8
 gOvTVAFs/rTAQfn4Rdis4T9Q90kPo1bpHYiZMRC2wGzJB9N2IlNCjpFd2nGJzvgabcfCv2m19+4
 iqmZGtzTZ3HZIt+Fv5a9eXw9vh11x+D1FTbgLKYxe7wU=
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-Proofpoint-GUID: Zb34t9XjCZz3KNOedpt_T_Lzj6XSi7d0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE2MSBTYWx0ZWRfX9JuPB7FRaFbe
 OW/QzqsvpMNbxM0Lp2q/eGmFe4aweWlJCn8LxxEXBzpuipaU2WhL+pf5JKc0S9cLfFqBywIOXdE
 py4HHP9bTHQYxb8jNLuQx2tL46TInXLwC5ev/xbCjB/hAqvZz+WTuyDU4ZtUaDMu5qGZuXcxoWr
 ZOBRQ6PhKWaxrdoU9XITe+IfN7MmhQLc8ahmkxNhzaxddL6kieml4AzhOSKopVJAieb8fU/wM4J
 7GxYRTjPQNqhMAqegPkPH1J9a6kJw8z5O0KhGT32CY97TX4KRAQorPmweb1Vych9y6PvA+qX3NS
 gbx7nbp/1v6nxsVS5kXA0PsWFQOG820isdcVRFV5IpF3tp2JZllkBMMaZhGpoeET3nDaoB4jz3r
 8XBCQOUv7/cex6OHW3g47reV+sQ+2Q==
X-Proofpoint-ORIG-GUID: Zb34t9XjCZz3KNOedpt_T_Lzj6XSi7d0
X-Authority-Analysis: v=2.4 cv=XYeEDY55 c=1 sm=1 tr=0 ts=69079350 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=DaeiM5VmU20ml6RIjrOvYw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dOedmflVD102KoYFdoYA:9
 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020161

When fixed regulators are not named with "regulator-" prefix, they can
not be neatly grouped and sorted together.

Rename the vph-pwr-regulator, to facilitate the incoming addition of
additional fixed regulators.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index a36961d55e41e0666cdf5dcd49500a23bf104d4c..f29a352b0288e9ef554ecfff59820ba39bf2cdb1 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -217,6 +217,13 @@ pmic_glink_sbu_in: endpoint {
 		};
 	};
 
+	vph_pwr: regulator-vph-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+	};
+
 	thermal-zones {
 		sdm-skin-thermal {
 			thermal-sensors = <&pmk8350_adc_tm 3>;
@@ -255,13 +262,6 @@ active-config0 {
 		};
 	};
 
-	vph_pwr: vph-pwr-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vph_pwr";
-		regulator-min-microvolt = <3700000>;
-		regulator-max-microvolt = <3700000>;
-	};
-
 	wcn6750-pmu {
 		compatible = "qcom,wcn6750-pmu";
 		pinctrl-0 = <&bt_en>;

---
base-commit: 98bd8b16ae57e8f25c95d496fcde3dfdd8223d41
change-id: 20251102-rb3gen2-regulator-sort-d45199d0f09c

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>


