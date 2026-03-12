Return-Path: <devicetree+bounces-274655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GN3oHFzZsmlDQAAAu9opvQ
	(envelope-from <devicetree+bounces-274655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:18:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 199932742B8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:18:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B98F030585A2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E873CAE61;
	Thu, 12 Mar 2026 15:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmmBoa8s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DRUqKLFD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C228C3C944D
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328477; cv=none; b=snHa0hdtXWUcgzN02UdO2Q9CPCRd28GuTjNWi1F4ZUFxLDQsLRloCMxGJS/GzyMGh89zZmuReeG7fmVPZ5QpRQF7PnHPpxXy9PdTBsuF4+7ci2uov/Xr1DA8jb1Cj6RrRYIbqNA+Ayqr5TTAMZiiEjlBJTIb3daqpgUP7XrXXec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328477; c=relaxed/simple;
	bh=X4cDjWA8XAFt7fsNjwtDKumSnpdsAxkUOQlbbaRz5zk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OBka2SkHilFKYbVeINZ6e80k3G14nPaWdw9TaIX56aOdk8ZUIEo3doVVaOLEXZBIpHYkQ8QPB4zrFaWBp4U1FFVR1v64yWsLHdSp5cWUn53tWeW40o41+GCXPF7iIJ7hKEBJLNGApoFtxmEwvV3Fw3SE4molR2ulai3zuUqpKsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmmBoa8s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DRUqKLFD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CD3E5b1594475
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pWL3fiXA9Fa8ntNChjGkVhOjIJEz1gSYeB7nZbS/3d4=; b=CmmBoa8sMZ3bJUva
	OaHd+G7y+KVjdgtBklNTj6dQF76OhSz30HAdS2DpCK7+dV1hSm0Ve3eltXSlInEP
	bM/MHkKW7wFTH4DKQbGQHZdU2TpxtEsqBkZniHSuojimzYKFDmLN1FewieQTHLoU
	+wkrBd7Phn5kbXQnLUtPiPB08MqQVkHtVVpwGK3Z/1WZigndDuucbhlNFDL5X3Jo
	exiGrQ47h/uDt2RoIASPQ/0hNlsU2Cp+jUW2NNcCJ0Pb90gOdLCV7Ud3EDw1qzwR
	yMT7ygZXGVcXJ1tU/S41vtQGirkBIXGa4YghBxB1HDHYSfLbau36QIjwaXtHPmdf
	bgl6tg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvq9x77-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:14:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7de0e161so718817585a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328474; x=1773933274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWL3fiXA9Fa8ntNChjGkVhOjIJEz1gSYeB7nZbS/3d4=;
        b=DRUqKLFDzStqiuJEYafwwxPRFbNG3QSJrGyrMVzAQiN6gWGz+Jx88FqmyIXIFgpHbP
         K3AcvvcvFZqt7B6ce7k+nl5AiVJI8fOEyFwsGB8JukWDwfGom0fju1Z9FKJ+tM0CayJL
         NCe4IFQDwfs6sm/6f77GWt4NyQhXJHW8TLBPXPsSAMRM2JkalHkcTJlTcIXfDvmh2X8W
         jKnpkj1c+kkTesShFbajBKNaJcOmTlIM22VsW8PY0dQj34PoOsNHwEV9oyvKNjhPRrMN
         KRxNLQKurhO1WYnTqIB1KOUCIQ1uWD0YWTSADRJ9h5Rc7irSUqiTbRccmJu1ev6dpg5Z
         lSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328474; x=1773933274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pWL3fiXA9Fa8ntNChjGkVhOjIJEz1gSYeB7nZbS/3d4=;
        b=JTid990ZkuW34IvF9b2wEbIVja1LXoHtEQ5oSHAYI+hy18hNmbaxYbN8GqOlT2dMjY
         rl3HsPJp78g40qtW9oS9odWwazQ1mzmI8PDwf5oSbA+0RHgDH6DLYfNr027+51hmQ3TS
         QiqgN/6YC6g/qdqQGQYK39G7NcT9ZhlAWAe917/8hLhxwN1JXBh2/7dyw1fZfjKMjfKx
         Yz9nyqxovrsgmYnKs3rqjYSe9exr1IwxGwjj3+GkdxsIijmMQ3q/7WE22v32xJJ+tqDB
         aAegKCJONvJ0TwozdGAfGqZEwFcbhnELGBewxgXuoSzpidof1sBcCcwaPZp00xnyCeOD
         Qqhg==
X-Forwarded-Encrypted: i=1; AJvYcCVRkN0BxepmD+QAC/MkYKcQhg5WaTy5LzZ562fIDOaxTqtcOvjiIiUKqrdukvRS2Sb7Ko6CgDoqesYL@vger.kernel.org
X-Gm-Message-State: AOJu0YxsdA9+GVZWQY9vxjlbXrMyRxR0e1yQmeFQ0LjarwUHiCFFkrCV
	SC0wE09uq8t/cOi8OtfE7VK19+Wp5T8kklEahQMYv5M+sKv6+JT2rgfM8fMzwXnXTgBXGqhpcJX
	SKuBAthdzBtf3+tEoJE31AMZY/z6rWwdlF/uwAKPc2l2R5hEfcIKmbpuTEndk0+nY
X-Gm-Gg: ATEYQzyaY82eoOI7CTOVs43XIDcWTxf1Pwex7I71VVUxDhi7m07no71427ni6IAOCxj
	bmJgYmTbZ3fbN18wrUH0ol9TEUKX96PSlUwXy0r5n58EYwJA1Mxx8MF9e1Q+L992VtNJJO8vCkv
	oe1dUd20z3Ka4j00NPGpZvSgW01Nz3ByBHT8UbT1YbkhHacmnIp38PlToBnSRe0609Je7HGXiG1
	Ho7Aa5SAQex3Aq8afdgVLrFKh6At9F0YLTjuMjQ7Ygshpz7CxfU7Qx74cu/YG1UuBJr/CjdO/bl
	EMIIZisGQmMi8reeU/y97PjqpBowenwNa3/OzIqy78nHAIMAuyIueRtwO8JhVl5LZIEUyPTtczZ
	+IxzsWR0cIR1dhqwnXPWPZposhCsbd6nHTWyrcRHvy/H8lMfB09MoZLzSmzJ+M6/c2QyWU/NJMT
	3E/VdPESuyoryq1UV/I5kQqnMa3ellZLnY6pg=
X-Received: by 2002:a05:620a:4008:b0:8cd:9aba:f5fa with SMTP id af79cd13be357-8cdb5b2486emr5085585a.42.1773328473969;
        Thu, 12 Mar 2026 08:14:33 -0700 (PDT)
X-Received: by 2002:a05:620a:4008:b0:8cd:9aba:f5fa with SMTP id af79cd13be357-8cdb5b2486emr5079185a.42.1773328473338;
        Thu, 12 Mar 2026 08:14:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm972822e87.61.2026.03.12.08.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:14:32 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 17:14:25 +0200
Subject: [PATCH v4 4/6] arm64: dts: qcom: sc8280xp-x13s: Enable Iris
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-iris-sc8280xp-v4-4-a047ef1e3c7d@oss.qualcomm.com>
References: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
In-Reply-To: <20260312-iris-sc8280xp-v4-0-a047ef1e3c7d@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1000;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=tNlTLOlCvqnTauAmRZZ8XPo/dz1PdM/NDbJfDYDq45A=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpsthRRY+bhDvcACRrzx8yoBASgNjQt8b7Nsmor
 kaboSwwrZaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCabLYUQAKCRCLPIo+Aiko
 1TilB/95N35HmLGggxXxeKDmXXT6y3f+rMGDyd8mhZkf84hhMDZ2hUnWfDI7t20z45G5Jte1clY
 /ZLNKYKuaaTCDhEg2AIrgUxYJtUmf2BffqqMCKtB/TP0IHPIkkRrqq3vrjw5FpEFdm/i7UVuzG9
 fHaqI/OBnbzmQu/N8DCMUNKvbT5tDlwoi5UkWxKMROTA+yOQtI0XX8YCBIOun4x8zkPi1Hsvhmi
 YnehHP1qOmRzDDjtO+8xFCNAQJf+SIxncNWdBBSyv6Z/779kPO8ROEzAi0Q71e+7hZa0yaWi6Gp
 FlD6ONaOngue1Xp43gPvvCtCsu/QnErMhfkpLnioEaHrlj//
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: lGrGbvPVmOUjO6A8k01Q4CwfrH1K378d
X-Proofpoint-GUID: lGrGbvPVmOUjO6A8k01Q4CwfrH1K378d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfXzN2W0zY5nUKi
 6shFCQWDA55B6HV1OqVfGRHdyAhVwmY8mcXP+efdn8a7qM1Fq4VclZX8TvEOwr9pOYR/AJBk5bQ
 Y4fMgS5UFJ4ydgwxY89r9YBYzCvhvs2BQLwGWjz69xrd6YtHO4Rq3P3y56kuYE9KoAItys4pVe5
 ysmp1BzOxILgJ5jLzewdt56nbeOYBTouPQDXlmZUCd8r2tyAwJCl5klzTZnevDapxYz8/ohyQnO
 zsvKzllvQd3Mrgud4FsyFOLDXrXLSxv2Lt4ZnWUp/DN7SJbOQIOCK4j/RADe0uCBxTSpWJWcGeO
 +ElvWVF/0iwgv5uSWW3pRjX+6FogpzNW517TsLzb0s5ud8ATZlRQdRi3tEVhVcp2Ek7EHKmX5/c
 MAxjPeiok8bk0bRceEhwfEFz7XJXfuDxtVSUgU6oqroegMM8gz1419+EkxDE74kifZYntUs34lE
 1T66F+WI/MY6kPxx3xw==
X-Authority-Analysis: v=2.4 cv=ccHfb3DM c=1 sm=1 tr=0 ts=69b2d85b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Ie9TG8L8bN-JZtJQupEA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120121
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274655-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.68:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 199932742B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Konrad Dybcio <konradybcio@kernel.org>

Enable Iris and point the driver to the correct firmware file.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
index d84ca010ab9d..0eab03495b8a 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
@@ -932,6 +932,12 @@ keyboard@68 {
 	};
 };
 
+&iris {
+	firmware-name = "qcom/sc8280xp/LENOVO/21BX/qcvss8280.mbn";
+
+	status = "okay";
+};
+
 &pcie2a {
 	perst-gpios = <&tlmm 143 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 145 GPIO_ACTIVE_LOW>;

-- 
2.47.3


