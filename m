Return-Path: <devicetree+bounces-270169-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDt7BErGpWnEFgAAu9opvQ
	(envelope-from <devicetree+bounces-270169-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:18:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 714011DDAF0
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 18:18:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E0323037EDA
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 17:10:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FE7E42B748;
	Mon,  2 Mar 2026 17:10:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BemmueE+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GqdNMgxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4D2429801
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 17:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772471422; cv=none; b=Xe0MO8hdi80cZDgM/PrjQd7klYZD3+xCAsmIynlllrp7sZ3b2W5CfbNsDU4s0unOgc3b62+tAm17GofPo49dJU/BKx5SXrHLLdV4GKl8+zWLtXKk6AbaXr8gPJ6cCRS28x01VvtKqdlddYRbGCjVaSpOuNkwFLjeRiuZ6nn9eBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772471422; c=relaxed/simple;
	bh=EoCXFpUebrCB3eLLljmtB175b7eB89tb2C5XolScFBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IyCg36QbzJmXRCbCU2ZB2Wbn1qdgO1jwGCNczDEUnq58eEEh9VBuQWA44AOEgTk7Cu9JFnV9G54I76emod55/p7LvSTW9XvuA2RbWKEtxNaEw8sZLNMf5lUySDuN50UAa2DXAEGD7RXr5bYuazTBoxgCqLTCxOnZHD9o42RsAC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BemmueE+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GqdNMgxu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622FSsCR3224157
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 17:10:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=; b=BemmueE+uLhZnm7n
	hBXKuEERFiKnldI9vKrDC8SlscBsGxiTvTJ034J3NJSjra4dTkpn2XsktBRtVQGE
	oN7YOK3fSM2JqReVPUL4531MlqV45bkIPZ+lz+QCMZu56ZjiUUlOYvz1rvYJF+6N
	gJZG8sHY4zAtnwYo+vXrNV125ixvHeZfzy2WlQneU6B94WOzsyOu3jbrfg/Fmftr
	zhWyJFzq1hx95EGbRn0VjNtIVKB5MYpBibFoma77ZVPuesWkbnFg/Qx2uW6VRw4J
	4P+EYhNvox1RarEDdKXfuudXcwlBZtlXH5ho/6rJZdJcvcFrJ/rTFyOa30+6eWnt
	mXTVqw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn0b1k47g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 17:10:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70ef98116so3998172285a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 09:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772471419; x=1773076219; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=GqdNMgxuNZSIH+nS3A5dxUTy0v214/yN/U0Ejc2Giqz30UMNQ3dqSEfFf2Y64CamBo
         g7nQEUsYIeedMLK3D+UAeIZ2qd7L/PKYHUeWFdbJmNZUWhPUJS7neb/ww2quuIfAPjNl
         hYvDz1fsnYwtwZV6rAkfXxpSGsXZVhrPEVsWl89kGC5yD8DL99BETWsxvdNzc7huISi0
         AWZimWUxwZHZBh34lckjAWT61F14Xbin5kqxUhnRQyKBFJvkL2H+A3YN8lsj2DnoWbuw
         mL9tmouSA5jljybyUIyEjDLjCMeR+PxkVstZNaXg4kR9MLTxzkQT1PjFXEkN5h1daW/A
         J51g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772471419; x=1773076219;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HDiLwnIohKXOcQY98meskBFzx6LAACu/bhd80+16XyI=;
        b=surRb1CHeFmhfWJ4KeBAokvhkZWbZvSB46/WCXtzCdgZCzfqAlHwVmuLrmcYB/E11l
         aYEhQ1CkkA3EehJyEMaEUP0xDMU/Zb0elNa8eX1glzT6QRxoJHfhLeY4gMx7mBArZXlI
         1hArQwdcB9XEvwznHrqmscmqotAcDqIwMjyhzbOhQs4+P+qzh/IcyP+HOjl3B5VUryhl
         FFWe/FG0NIXiWgPvtfgSWwTCJLrBwLYtCYWrrv9IEmqAn1F4az05VoKyo6FSwomqqy3/
         UnTMp+6jnD6cjamwBdAqaU06vFXNhnisinsNNIcF3P2RcDweyV4ZaJCQWjCV4+cmKJeN
         KSyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYgNLJxzJWynyo59AOWYl3jdjuLEQ5dun73lAYXrWowcO3CsXFHgR8KeTrG+NuVP6dzDEVLSl3jNJT@vger.kernel.org
X-Gm-Message-State: AOJu0YxJRcN35ORwJRxxiqQbAq8e7hq4v+T+lUEn2MEbz6FEhs3GhEuz
	DhMmqCVYEatt/lE5eq9eeFPZJgL9JVYYp8ZHSEIZLvIADQj5jt6wJL3wL71Lk4Hc/V8amxP2TdD
	aTXbxEMM9R//0I8F79htuPRQ15p9bl1TcpbzWv5zbykIp0i+gHqTetVVdrnnI5bGd
X-Gm-Gg: ATEYQzxV3wp/vDgSD1CT/zYN1DZkNqaA+442a1luxtSinQLDcQ+QwjqbphjZceDT6Va
	+wt9DfmcDlRKXjyLv6V1SeAd55s2dYUcXv2lEX0yVE1B9HqcDXFieoqKwqh+9CMkyIr9+AAm3t9
	uPzdEyxIHHizKRnHIeQRmSDDP5idVxhGyu9GOzITI8FHRwqRrXGiaKpjrYXHf0pHY0cvrO2k2t6
	ZmxdCEZNalVgUtV/L+WcdjHQPX7fmFRjge9VV+ZK08RhvASevh/DqkJqBykkmkVPFfcrtKnMnBf
	u7gtQgZ5Quo7KLiOr7lidF0/EyepWO8qMhqX+ISr44zI4Ufn3XH2OYsdFDUOgoBP8nWJAROXjIR
	i7vntY13YWyLa96sh2exMvXUShjRIbw==
X-Received: by 2002:a05:620a:29c9:b0:8cb:4cc2:c5d3 with SMTP id af79cd13be357-8cbc8e19a98mr1572877185a.73.1772471419214;
        Mon, 02 Mar 2026 09:10:19 -0800 (PST)
X-Received: by 2002:a05:620a:29c9:b0:8cb:4cc2:c5d3 with SMTP id af79cd13be357-8cbc8e19a98mr1572857885a.73.1772471416856;
        Mon, 02 Mar 2026 09:10:16 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b4175fd2sm12824083f8f.14.2026.03.02.09.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 09:10:15 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 19:09:52 +0200
Subject: [PATCH RFT v3 1/3] dt-bindings: usb: qcom,dwc3: Allow high-speed
 interrupt on Glymur, Hamoa and Milos
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-dts-qcom-glymur-add-usb-support-v3-1-883eb2691a0d@oss.qualcomm.com>
References: <20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com>
In-Reply-To: <20260302-dts-qcom-glymur-add-usb-support-v3-0-883eb2691a0d@oss.qualcomm.com>
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
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppcRxNtJcfd0D54Evk7OMYI3bITnHP5x0lY5SF
 S8gvBXUPuaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaXEcQAKCRAbX0TJAJUV
 VnP2D/9aaAraGTvBu5gFso3EVw1gjmwHfYI+iKJ51fZdDH1dgSUe6RIQEtAmiprkpne3yed8x/w
 OzzME/qpVOo4tPjf0hQux9gpUjFSpKYYXNPwHVpFOTSSKUmA8uLpcQs+252fkGVmUs1eEHfSMym
 CzdM9o4SMFfLXEFcENGCZuRgMpz4n1WDNKHaYaoWTHjVPqejMnO9auqMpe0CsCAEQBhu68MbRBG
 HOMGSm+d5qxHLC68d7Hdrtroz2+SL71IuS3KUa+MD51clFN/tsJkvz55D/oEQzZY76fJXcqwNd9
 02kMOPB2nSKXqZatCr8fpGWqJZE+xajbgRuzGOFEHS7h3N05I3R9OFRPsJz8J9j0zl9rRaiikn6
 nZKImbJaJhusgoEKzV/vtFJPt4IxccgLdaBJfotAV++ifsI29zg309h8AAB/sCuaX5toWsgO3Jp
 S6sC3El1KLc6mKU6Kn4c5QcdXGmvAdVFuB90ZPuFLMbB7GaTY35u39GIwnfesC1IsqeEs1pwK8M
 vjCyC5rBeIYFIutNAb1jd7XErSHlGtcE1dwc3JeCBXRUgDgz3Rn+hIdY6q/EFjfEAd6CcIzarjh
 6usd2cbaIwxHwlXo52Z7WuV2JNkID+Onh6Jui45MRma1ictOO7iZmEUNd0f9xsfwi45U3TP8Qhx
 xY/Q3wOGwWBz8bg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: MNVLFOER2VJNBaayXWTVElG_ZVuhkH5x
X-Authority-Analysis: v=2.4 cv=Hol72kTS c=1 sm=1 tr=0 ts=69a5c47c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=vx3hbeaYKRubAM7LXykA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: MNVLFOER2VJNBaayXWTVElG_ZVuhkH5x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDE0MCBTYWx0ZWRfX/rhv1i1S84He
 BYKi/UIopCoc9/7m0MLMF6iCupA5Mb0T///bcbxKMGTaxP+eYbunjCLowxlf/r8hNXpoO91X6u7
 VEMb1KUPpF5vXPCdiwieKtSuNoufFxbePgBd10GxuKPrurwiBFPuD5npI3244ZIlb3kVbSiE6cR
 hbyjNozBRztsSta2vD9MWMlQJ1IA9zOjzNYF7YyPewlbK32y+NET93ZLh/nTeCfAycwRoyVvnH3
 kSGtNfiU1iyBCxUOP1RWrXL9e+JJePsX/pxNNKD5c1MxScRkb/92rBpbSxR8PP3uTx3fQ1Qz0o7
 Ae2KsD5zeK64hsDZ1RUvwX7fiBe5otTyN6D2tSzXJ4dNsbGvzxDQaq8grxnoY8XGQopDfl2fhil
 cpR5fcQZ2zHyTBXwoDpo5YL6561J57m9BQr0wy3nY8Yll2SAhKxQGV8TpZsNM7TzrC/rc23Qcvv
 u+dOH6P7IdxzvUDuQeA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_04,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020140
X-Rspamd-Queue-Id: 714011DDAF0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270169-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
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


