Return-Path: <devicetree+bounces-272840-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJONDJunrmkFHQIAu9opvQ
	(envelope-from <devicetree+bounces-272840-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:57:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D960623772A
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:57:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2590B3023A72
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DAD2395245;
	Mon,  9 Mar 2026 10:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mu1i2n/X";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gl9EICug"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B02D393DED
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053827; cv=none; b=UUibGf4aKGCl+b12TBbbQJevIY1Lgg0C/rs+1Pbhv2r3sjrG/j4Of9Trw2ShrP3Uh8KNFXFvlDEn4f5n/x+ptN1eBtH0SRJA20cICrrIvUwbLUtpESS25ojBJLmSCT7SftqljI2GzWll34/IjM3+SC1pXMROCAPQWzNPr1SGGug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053827; c=relaxed/simple;
	bh=EoCXFpUebrCB3eLLljmtB175b7eB89tb2C5XolScFBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qNI1lFoj8HsxHZjzRM/mR93E6sY2OXszXuFH6CzCP4d5iL8XKN0Glid/kcpVCFJYk4ug0Q8PWK6LGyiGHoQSwm43i7s71B6SNT3W56jnNtbnJVRBB16i579OH/Hz7vrlhyk40DCyCoU+fLtX8PX2R4xyjXBD9L2yWLw1Odi3jzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mu1i2n/X; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gl9EICug; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298A47i2661676
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:57:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=; b=mu1i2n/XLzVAkAvC
	lQZ00jDPlSV2TZxUILbgEbZuP9RgEaP17+7yNbd+jB3Ny93CaOUQc4cntmanfjmc
	NMAFPeI5Cq5sa9C3gLIs6Ztk3RCkjJnvjfVVYn4UFkKA5QKCjbrN4uDbsq5bS08G
	FBbfyHi6Uag34/wrxVS0HycO40NiYYncn9IBOtEobImMg8BGdfk4kRgAFBNtEYCc
	YkndZOgif0JvOJw/TF/82rL20yj3ccSWZYIHn5Sij1QHEXkmTCoFX+nIa/LVKw4u
	DoetLbQapV/dpq9OTIGhLY3OeHLGLUF0dP/KppcUtCwwJKCRjoFKypX+jRm7X2GI
	6kDU+A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9cpncaq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:57:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb0595def4so85613985a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773053821; x=1773658621; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=gl9EICugrxIBz2MBHdJGcddXR6xaPzr5dYHmsSTrLSRa+FDgx5hAzYQml8Icl8+KJO
         z8OlibI6PuadMrz3gKvId9v9OCGYuGW0xQ88K5oxp7AFfW0tyyeqCBxl9JMZtomYhiSw
         /k4imDPAFVm2DtxWN+veIbgNbeNdFQCViR+Rn0kO2poFvMdyjG456S2MtiiHftU8PJoc
         xMhUQVmTrUSfVKObDWPT6bnKQLJey/pqe7+5gft+c20Nh/W6oG1f1+uWHY4WGsdVfU4x
         te7SQUD/ZQgi3FL+2BjEbMpzIZeCk3JItqDHkB9/X4TPMPPOjp9+FJvZCs+JqfgtRKNs
         qydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773053821; x=1773658621;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=VbxrXPiTag4qC3kFORL9tMaWn0gp/Ld+S9Di3dAeCvzhK5xBs8+S0T0rmHE72FgDhs
         SChna5Q4Poep5gOhht6L1OH5NfeUxRwzoLY3IioE5GSDPBLZVr1Cf3z9Leg445urgH4Z
         paA0VVJNCTCSsHKomQSNTCui7+GKPwOmbICMH6sQ7VFMEIsWh61bL/w4DrJXTjot7GWj
         ahWJy/p1Y5/NypPT/7BCyAYKtpZZuq9gdLf0yjNKJJ+/xwX7AMLu4si0IeiYS42xU2z+
         auXmR8hJBXFjZNgmevfmPTkptQOKqpJ1utO8/qbKVpONPYy8/G2M12acU1BnYsp+PzTH
         Ps2A==
X-Forwarded-Encrypted: i=1; AJvYcCVf+Los1bY9hlg1KZjq2/r7lCApVaAWQVZr01wXLb2BenebwQwzI/M7PqSRobg5J+MNSAw2siVvyqZ+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy9PL2hms9Ki1OgBnCQZ2E/P8zlpNwlVA4nCimhoqmk12PzQAd
	iNYrtsSggqpK9KyGOxyjaVHaaKays3uAHLyIWa9pa+FPDfe6wMzbSBt/jKjOxaJ+m3OpO8/c6PC
	ruUfoWjAiB7ObR1ga3FgaqfjntfurPSoek6FyxOrurPg98NP2YRD6Mcpbyw9iNB4L
X-Gm-Gg: ATEYQzxpqCPK1yz/B1TXsj7jY+VzYk1/DfkOIC+41UXHUmRI0b1JTxjJzB/YPKrb8rO
	wdY6e8PWYqKS15znv+cUK9+Ho704DmkUxGZhWqBQ0VxfGsVKfcz167W+5/pdaVcKVpALX9qup8e
	TIR99Nt/cozO/aodv+b8qVQcr61mb2RSTDQEaG/MTzonS+WWpE6rYykf2DUVznYfRcFhGimOolx
	9nYjF0cRUfa3sPA5hWLks54IiFkicEUbps3c5w0NvJjSQrq07giFsZr2Q+RC/eiPftQ6W3hRvIf
	aPLpk9HxXkN+fqrmZbWevt+UsRETCVn7XWTfjd960wX7rNPZrH5857ktJswcPkvJ1ZxHehUTcsU
	eiGn9m9jpPLJddFZPGaBC4z12x6XePQ==
X-Received: by 2002:a05:620a:190e:b0:8cd:8ce4:c0ad with SMTP id af79cd13be357-8cd8ce4c8cdmr199055485a.22.1773053821403;
        Mon, 09 Mar 2026 03:57:01 -0700 (PDT)
X-Received: by 2002:a05:620a:190e:b0:8cd:8ce4:c0ad with SMTP id af79cd13be357-8cd8ce4c8cdmr199052285a.22.1773053820893;
        Mon, 09 Mar 2026 03:57:00 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dada3b43sm26169971f8f.13.2026.03.09.03.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 03:56:59 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 12:56:51 +0200
Subject: [PATCH v4 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-dts-qcom-glymur-add-usb-support-v4-1-6bdc41f58d18@oss.qualcomm.com>
References: <20260309-dts-qcom-glymur-add-usb-support-v4-0-6bdc41f58d18@oss.qualcomm.com>
In-Reply-To: <20260309-dts-qcom-glymur-add-usb-support-v4-0-6bdc41f58d18@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1076;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=EoCXFpUebrCB3eLLljmtB175b7eB89tb2C5XolScFBU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprqd1aqqJKIRh+N2sgZHRqrHQi3HjJu70xF6WF
 GHqiz8d1zKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa6ndQAKCRAbX0TJAJUV
 ViwOD/0VWHfA76EiN5qNwYEuDyT1o+xqk/dAWpq4qBIfJzmkQZIaLxgZ8bRb7x0pyr+1zG19m4u
 2INmhHoN/Xk4zin8UklIVhZjcOYYuAJkKwDkv8syVV8TAcfD4AcFDT91B/Nht+MScO8Knwgrrvp
 PCcuGAdI9nTpYzzJzLgjMSkI0K/Iw/I9HCeoqwWyoG9Ficw597aV+IOe6xNlCu1p0zVR57CxHfD
 867y4uHG1N/L+AW3wFprCUm8sw+/DexlgHC/vWgcVTmJvikZrkWryXHVp+mnHlkYlw+ikPhVX0q
 tl20eVuPjFHpSR8imd8sT090or0FjOdZ/bqsp/MgyG/WBCxsJ7OjyssduM5SpDjXK4R3lvmpdFv
 FJFqj/DysU9LhBhjCTpAKii072zYxZa2QPRzOO345Ct0SWipmKSEbs3kO2rAPjvEV/aiXUg4GBo
 aiePWPS2PHkM/lVpp2IyEGs3D+VjuQVIsNYH67gWU61EoM01ldyY1mt6jmxNqLiaM8zunOLjf8/
 M3Nr09otXH+DLLxhzu13rpWME7oEcm8W65Gc/lfI2cU6eX68g/Qo3pSKaCwvaYguz9hnL5g6g9d
 sypbuoM/UXZaeJHgtvke1jigXbeE/1t7sflYe1CktzkmJvleeaV4COOHvK8d4pP+H8/usYs9Dpg
 Ig++UWLbMp/3sxQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwMCBTYWx0ZWRfX3TQhcsLN++2d
 vFj9J3D0BBe3IKmwgQostk4HyzWDVTv/o+Cpz+HRDvbwVTLW7aHVmqNzRA9bVFbmjZSkmWSXFQo
 To37z0H0eM7cyERWRKBW5k8txmnwRSPMbwBGQSwRMW0eoBs3mF86DYBftw4/7aAxsltZuyGCEbR
 pff2dJf+uwgK3sFIupFJDHIfabcIRyp0GfdoypJe+vzLfZO3pge6rm3GJ1lBq/D9fA+HVF4ae8z
 wdxm7MfStJ5+sKl+fBZ6FlVQylReNlEU4KAUXjQfrm/AlYPiWgq3OHWpNFlui3g1XVo1LMT9Qi8
 NUMp9gScj36WThNXqw71iZfPwb7Wo30wuQw3EEB6Pitc2zWzEKlotGdxbxNPaiq3Os/G0jIsr8U
 rqu4rnGEqFU5Spv1EAtMOwyd5OAX8Ej+x4n1MdmQRjCA2EyuIUJnwZdmeb3jSCD+Pada7QAUcF9
 QBFZZfuL39Rd16ke7mw==
X-Proofpoint-ORIG-GUID: mxLhFSHNn46aTS42bby8ygzFo2pWGB9k
X-Proofpoint-GUID: mxLhFSHNn46aTS42bby8ygzFo2pWGB9k
X-Authority-Analysis: v=2.4 cv=e7sLiKp/ c=1 sm=1 tr=0 ts=69aea77e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vx3hbeaYKRubAM7LXykA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090100
X-Rspamd-Queue-Id: D960623772A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272840-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Some of the controllers found of these platforms can be tied up to a
single high-speed PHY, basically rendering them as USB 2.0 controllers.
So in this case, the interrupt to the Synopsys DesignWare Core is coming
from the high-speed PHY, so allow the interrupt to reflect that.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 7d784a648b7d..f879e2e104c4 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -500,7 +500,7 @@ allOf:
             - const: pwr_event
             - const: dp_hs_phy_irq
             - const: dm_hs_phy_irq
-            - const: ss_phy_irq
+            - enum: [hs_phy_irq, ss_phy_irq]
 
   - if:
       properties:

-- 
2.48.1


