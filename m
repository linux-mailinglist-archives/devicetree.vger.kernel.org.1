Return-Path: <devicetree+bounces-276772-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6KeuFqmNuWnkJwIAu9opvQ
	(envelope-from <devicetree+bounces-276772-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:21:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 768BD2AF67E
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:21:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0176F30BD2B8
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:08:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DB373F6608;
	Tue, 17 Mar 2026 17:08:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CAsbTjt3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MJnoDT5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D319F3F54B5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767312; cv=none; b=U7t51z9iv1NH7J+Uk1AaseEvCr6aCzzH3G6v0bqYUAKv3+7yrIZ2B/pXFeRxKE8hBPAVdr5Tr+alSl2ZoBJ3lPlqMoZW4CtUQZQZgS4Li0CZjEZ55cC3id9gLepbnGboxFf2f0pOiQMqlkzxjQ7MyfCbp0i48vC//unPibYUEuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767312; c=relaxed/simple;
	bh=FTuznDCpUVDJV9gX6+wiTxvl2Qo3nLbdwQMrVnp5lAw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GXfzqwikD2WtfJNVgruLC2pJpQQFFk00Xdsc/Sw/j2HXXqmf0MfgpacpYAcg6kr97cATDZFshwru6dsV/vcy9q4B7Ke2v4r97tQcRn9QuubOHIIj1nXCO+cWvO4Jo7i6rofVZfRpRpSNLV8i2rkLZLBNLS1vpV7HDnsiFOamvns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CAsbTjt3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MJnoDT5b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HGjZCx2072257
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NS4dc2x5Hccc8XIaeqkJi/
	CVX1Ky633slP0DnsBBDZQ=; b=CAsbTjt3hkMa84xPsI1ZFl/YSxpYjkrE+GSHe4
	7OiQR13rBGsvDK50RT3rQUD+uOU53fQ6lSuhxIPfyXliCFatfwcF8/eavg7qUOqv
	Mtb/W0fsyDSyTi2k+Actg9EniztQZKfb6Qh2Wj22qjHk71/yfA8aHF0xg/qXZb89
	Xu/rEIYe6hvYTGtlfpNxEA3CXjwtA2SSv8qCDhNYp/FRhorVwNd6yAaILW4nmv3d
	FDYAUu50wddmVo6AiSUCYbMUjupphYwbTeyqJGHOZn6Up8TuJzl30Hxpk5iLWpv3
	sIBMCyF0eXlZLD0sQMXxT0ZYoCqag8yAvZUuMhrBDv5KBHDQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy4v6sjfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:29 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-950c363a61aso39063940241.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767308; x=1774372108; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NS4dc2x5Hccc8XIaeqkJi/CVX1Ky633slP0DnsBBDZQ=;
        b=MJnoDT5boMjR9e8RJZVLsF4mi5UMQbu9qRTQY9+hl45+LMLJLCY6w5+pzhxmTYaDvR
         AgXcXyTgDmRJ26D166b05dEnNybo5BbM7wikainfiX4fRCaE4J4vj5RJh0OjPj5UlHUX
         Xbbhyc9aIBxjW79MYpXGWqqitu5LA6p20T4jy9OJqW9YEOPsqyC6s95piIsA4yYNasHV
         TXgzusI1uaO/FLKBI8dFjLX+65j/s839CUn3WQiWAIck3DTcv6VIg+7OZpy107RN+sLf
         Lnsd2lAiUiQwisxyRAnne4RXevLZw1DyrRGxtWgnj9s6oC0tsk1X8fky/0nVsqY8QXBi
         haCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767308; x=1774372108;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NS4dc2x5Hccc8XIaeqkJi/CVX1Ky633slP0DnsBBDZQ=;
        b=FhwcoUxQnf1s5QbBu9C2o1E2yw1LAlIilTUfb/6koxMYn8NAo9PmEAD7O18zcDQSt8
         goTN3do0SHVXW6Kzgi24X4X0XJJ+imWBLfLsWjNpwWYEXjJrfKeTu8fTzNbKS4kABHyc
         teoi3r3iFKWsIpjF4OjmGBPScUdxHSjehfFCSqyjWZSPBiQX5X3XMbcPdqxQgyU5Ph2E
         DX3pKU38Ns4ZduzwjVuBoyW+5n53ZPcYeRgmzw+nG99vEpAYaVhbJITntFADYijfgLxU
         c+4R0p2iywUjOfm/asnfh9qEaQoRzFYcb4c6wlr0Q3dkw5WAhL+m7KPyuu/hIJ2n3zsq
         zdNw==
X-Forwarded-Encrypted: i=1; AJvYcCUuYO5m4j9yMnMk44xfrTLcBVjJJkECK5t2b4En+1ZfLGIHsDctQ3nZSjcn7PPYcP1WflSjcnhaX7IE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjt9bpFET/O0fP4qEaqo4f0NdtJZux/f3ELxv5bgyhk+xcx8o+
	jrPdKIrpNLz7W4AUi3ZFABa/9dWEXxbBdKncxLCfBS2RWU5cGwOvo53eWd/CflsaibQ62/HB7Uk
	9C5IVyER5d2vla4wm8O6O7vzfPfjBHcuYmuiy0dl+JhmHfOv7vrYZsF6VXs4MKJaD
X-Gm-Gg: ATEYQzzSKt/UC8W5aQyiU4zoYQjnb49XPDjpwbilyU2+Vpgtp4DCQQjActeMs+M3fZf
	L4TqlFaGBIiq9cV82ZwJWTVyfKjR5mH1wsA11/8knWE9loKST9gu93MOdQ4Y7UsxUbUTHS6qwBJ
	Rg8ju99Skhw3noXFFmyt6fS+cRzVYFyEv/UZzwSfggg5KzNNJmcPmIrYSTpaQ6OwNUg8B8TUe0N
	RWgccNgWKv8k+1e2Tl4bpTR/hvjt7f+b34PG4r49aPCxc6hKxyi/sghsHURnrrIcZ8LaC2O3ybB
	fUJVsXFmgn3o7zzvJKJ0dZ0Q5WBMDR8yhGD2ix0qiIceMMQpt+pzUX/E32o3F4mdTz+S1uAVH7S
	oEVW19y7BBGidPHpfsbpp9DYUs0/TUpc3VHHYxLCzCn3L
X-Received: by 2002:a05:6102:5123:b0:5fe:c17:a2aa with SMTP id ada2fe7eead31-6027d088679mr308865137.5.1773767307951;
        Tue, 17 Mar 2026 10:08:27 -0700 (PDT)
X-Received: by 2002:a05:6102:5123:b0:5fe:c17:a2aa with SMTP id ada2fe7eead31-6027d088679mr308838137.5.1773767307438;
        Tue, 17 Mar 2026 10:08:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm877072f8f.21.2026.03.17.10.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:08:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 0/4] arm64: dts: qcom: sm8750: Enable display
Date: Tue, 17 Mar 2026 18:08:18 +0100
Message-Id: <20260317-sm8750-display-dts-v5-0-fb53371e251c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIKKuWkC/33OwY6DIBAG4FcxnIthBhDsqe+x2QMqtCQqLVizT
 eO7L63Z7aHuXib5/2S+mTtJNnqbyL64k2hnn3wYc5C7grQnMx4t9V3OBBlKJlDQNGglGe18Ovf
 mRrspUSGUUNxw7pwjefEcrfNfT/Tjc83RXq7Znl7lyacpxNvz8AyP9t8bM1BGK9cgtqaWjutD7
 0cTQxnikTy8GX8NAMBNA7PRgaxUKzXXCG8GfxkI1abBs8G1rk1r0TnWHEJK5eVq+jYMQ5nHKok
 fqWIIelMSWQIluK210LoS79KuWAUO7E+hkwqM0lXTKLbxy7Is33hAXYzkAQAA
X-Change-ID: 20250424-sm8750-display-dts-447473a33fff
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2052;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=FTuznDCpUVDJV9gX6+wiTxvl2Qo3nLbdwQMrVnp5lAw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuYqF3S7LCDNc65iQDu0Ikq+Adr4LP/sP6AtcC
 sD6gLfFUcOJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabmKhQAKCRDBN2bmhouD
 10cQD/0WcJBitBXGO4EgZOpD3CNvKE7DVCWtEOcZQXt3Kwyd0kT/SLyPG1vw6iaHvzNYKZtX4/5
 sjJWC+P1w4LHGaVpG6PjQwLDH4B58jUmhocSKwwwaRzsAMpGxUxAkIROQTzuCClKSoHoNowIYfg
 KvM4hUdp6SmFXgDRQpyFzKsT11D/qQ/795ZGC5ErSjZetqDHDME0WFyzX+LuFtB2lTXTzcs/u2N
 y1eI7PTNOd87ZU0hn4h6BZUkA2zBd9Bbntbxje3VqyIGLyBBUb8uDccZBP9F7YtU8Ssyn1SYBFf
 vZ/aES49BuikFdW4+SeCW5d4WnKH2udWvU1OSJUi2Tjk5J57p7gKpDVf9QEEhRruXdxY2GAd2BV
 s3QM24xcOOI6I2xX6a/pJFBj8ffdN3nh8fKQmenzBTGP7DKMwk1vXjizeAz4JxLgL9Vce0hzItW
 U3j8hF01oyqL33aM0TjHwwg/6ehi/SSF13DCcsD5x0Uuk/hIt1PZCvCht8QAtDxFYMQP43WuCHS
 kQVt/N2Z9ldE+40w8uqHQJsEMAQExVThldoE72z7nBGHWGFk0rTahBdk79qtXNe4z9bFEOaOorn
 ifQjdhWqUmHaXJZ/q3VjrGEN0ffY0dxPXn4MZGM1M/HNPIwvoeV0FdfvypOyCtBO0QUWfCRzyCg
 YbquOrl9477nwkg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: R_3Ae4XIvUMeK2Kg_0vUmmfYg1KiLf_T
X-Authority-Analysis: v=2.4 cv=Aa683nXG c=1 sm=1 tr=0 ts=69b98a8d cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=9R8VuvqHf2Z2bX_J5xIA:9 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: R_3Ae4XIvUMeK2Kg_0vUmmfYg1KiLf_T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MSBTYWx0ZWRfX+Xl6W2UGkKIR
 rUbRTeNp9yHcR+JlzNB4maWHc4ubhpfaGVKqxNDL9//bG1KAXCXIj8wHKFONhFu1jrmjP1v3tNf
 BrPPi9fckuoAch0y8+6K81JALomrhRMSrbFqHJurT1nhTEFWNwsEz7opkvDsloTrOE2HIfCirNs
 iY2LGD/Hh9kP7lj7A1e8JbttCxM1e2AeU9IdinrLVHySkTjo9TMUDdx6dtta3/RVIEjmbZLKVVR
 63mwMScSashQbwu/3/ODbuj8GVTaMdO7nyCUJpb/ELNt8VDN7BWxJeECVGs4CAK7uRZYlVbQOIa
 648noq560HocwyMmV5twE/gEyjHkExYfUfK/PJNcKLxmLNgkUY1w6Rorm5X6jfdWjdjQRen8T5W
 yXGxxpbG4IGizYxteotNpZ0OKWG0EoYsd0E6xAvQvcHFHtmyqHaclE96BDLUSAfqAazR25EaV0E
 1rvsFQ5iS3Kgnyj8H9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 impostorscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170151
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276772-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 768BD2AF67E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes in v5:
- Drop 192 MHz OPP mode, because it is not correct (should be 19.2) and
  not needed (Abel)
- 0 -> 0x0 in reg in few places
- Link to v4: https://patch.msgid.link/20260310-sm8750-display-dts-v4-0-d571a786bb70@oss.qualcomm.com

Resent with some tags added (but not half-done reviews - please ack
patches if you do not intend to actually review them)
- Link to v4: https://patch.msgid.link/20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com

Changes in v4:
- Add tags, rebase (context changes)
- altmode->accessory mode (Dmitry)
- Drop redundant TE mdp_sync pin state (Dmitry)
- Link to v3: https://patch.msgid.link/20251216-sm8750-display-dts-v3-0-3889ace2ff0b@oss.qualcomm.com

Changes in v3:
- Rebase, add Rb tags
- Patch #3: Add link-frequencies as Konrad Suggested
- Link to v2: https://patch.msgid.link/20251112-sm8750-display-dts-v2-0-d1567c583821@linaro.org

Changes in v2:
- Add Rb tags
- Re-order nodes/sort by unit address
- Add low_svs_d1 opps for DSI and DPU
- Add DP Pixel1 clock (they were added to other targets as well, also
  Abel pointed it out)
- Some context changes due to dependency changes/merging
- Link to v1: https://lore.kernel.org/r/20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org

All dependencies, including bindings, were merged, so this can be applied.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      arm64: dts: qcom: sm8750: Add display (MDSS) with Display CC
      arm64: dts: qcom: sm8750-mtp: Enable display
      arm64: dts: qcom: sm8750-mtp: Enable USB headset and Type-C accessory mode
      arm64: dts: qcom: sm8750-mtp: Enable DisplayPort over USB

 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 122 +++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 434 ++++++++++++++++++++++++++++++++
 2 files changed, 556 insertions(+)
---
base-commit: c421ee9ddcd27288af275c1b185aa4c86eea9b9e
change-id: 20250424-sm8750-display-dts-447473a33fff

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


