Return-Path: <devicetree+bounces-272909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEaGCmG7rmmxIQIAu9opvQ
	(envelope-from <devicetree+bounces-272909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:21:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBFD238B70
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 13:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9C701306A942
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 12:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B0A13B4EB4;
	Mon,  9 Mar 2026 12:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fKKrBhiI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b/35yXaW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB303B3C10
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773058125; cv=none; b=Sr6pUEe2hEemsmcZ00gu+mg00DI01OHokHupwya7flUKTgE3FBn7t5HiNctmp19cqiN7M2ANn/m3NSYPyQRPYRJ88j0FmMJ9qfLYv0a8LPb2ZvRC8pTMUiNXSIepZ8HM7T7WHswtnfjUFpYnEAawJ/rKIrWbEYICT3R/lM4jbwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773058125; c=relaxed/simple;
	bh=1sn78LttMrRMUezN4gisx8QGKM/WL0hmkjnpTYU7Iwg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Jyj4fZESgJsYPVW5R3WpPHmVEk0jaFfMnpAMQY+NeRrPLEmbL/lF5TiJ5gqluDqjUNhpfQkFdtO4Jqaa17kSWBi4mH0y5vvg7UgzZPqvVfphtfdjnmWtmdjxDRmJdDhVIjnXdvspf62LJjbG/rJrdOWabj/rm5R7u6HAn5Fx6MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fKKrBhiI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b/35yXaW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6297Sv0i1946882
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 12:08:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	biU6qmm1Qc3frwDzjn9znEgNWGd+TV/qjx80ORgvkWA=; b=fKKrBhiItcTGd1HD
	2aebwXqvtmlgU3+i0JI/P+BsaHa9C7v49gbykOE1NiN5VFH0g4dCfufAoFNh/HnZ
	93WLK/KjRpDZGYbqlKmsEuqB9yFzDPNjXZoR/LsoJEaJfvmJDZ9mybaH67VyfGNs
	Gm53T75tt71p9mf96p4K1mhVHPP/svN4ygjCgmqjMFcwbn95YPlosp6jEl6RZDcV
	N34rfbaBt6+Yp/R1IlwMs+va7KcZdL7J++e/wLpgDuHFV2AY1vsE61ta3unxC+5u
	qfr2TJZ4sWrKitupVvPAqqeLQ9/ev/WpepiWov8rZRsOlCqV2Ji1RNc6w1kMqypG
	a65zOQ==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crda9d4bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 12:08:43 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5ffaa511969so5029727137.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:08:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773058122; x=1773662922; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=biU6qmm1Qc3frwDzjn9znEgNWGd+TV/qjx80ORgvkWA=;
        b=b/35yXaWUrgriRIiGPI7Vu+Xc59kh524+O9MUJ5iGrVn8FOwxuqeYcTYlyi3DvC4wA
         SFWnm3BLcKAkK8kXBwL+sCJefC53c8RBHCOAnsbxAJQS6qmXFKhwR9j8sLkNeiWDgpD7
         RPJX1pBlIa9S9Y2Q3FdI5DE1g5iUocjky3IVpbPnj+2AIfCPTQZmAoekxCCvExIB6CAO
         w0BereRRgrLyOYulUWH2p6NbXmnWoGjnDTjpx/5fwvA52vaPMdASzy5+ud07mArstwa2
         U1hOPt3MDjh93ABa5kKtkplxqmzADIgrhD+mJQEjEbPLSnn4498kgXGerweF9b6gCSV8
         2cHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773058122; x=1773662922;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=biU6qmm1Qc3frwDzjn9znEgNWGd+TV/qjx80ORgvkWA=;
        b=eIsF3z2A5nGvKYuPSKGunMGcRA3/2T22kTQ/u6Edy2JTIe6h/OmhxveRyeAiU/sHAd
         9hO4/x/cndwkcnWEZUfJZsA1YJ6TW3iHCtw96Mk9zxFSmIH71vmA6ZjBoBEkTlS7X8Wy
         +EnVQ16TAmcAQ3LgwaCrMS1lwZ+bAvjDVa40oEzL5HlilSfW+Iaz+dibthb2GgbbD09P
         4xEhmZqPMX+clieKWk+UBTuqg6GdleumuFeg5kPKb5kbjglpdKAc7Gbll8UavFWHSzSB
         Z05IcGG1AeBYpGf/W8XDTtsY55il798z2HLXCHcewF6wCkZGOPbzUyN1zLNaC0+h3bXO
         9hqA==
X-Forwarded-Encrypted: i=1; AJvYcCWOfYi6RauGPIRUEBjDaEUIx8CjJ31tvIfHbXQXSQhjtzrPCt4JGkDnEo/Cp2E9YOdR8dumOpXGi9OR@vger.kernel.org
X-Gm-Message-State: AOJu0YzGcbaVnVUyuVlbu1GhMVnA4wtB0ht0y/WpyLgZgeQD4qFC3hAq
	z5Wziahhc99dvSrLVr9/AImaV4SLTGveffCsYbj7b8WNNlgSJKprEf0Oloqnz2P35TsHi3Sx+pP
	VeV4lD7GEuNS769hJ5WIcz1xrIav/jMsFUPiAA6HpEYBoFI34VtV+ee5T0uYUThRc
X-Gm-Gg: ATEYQzzNCGzEHhH/93WfNrcauOLKWqH7nsksALNHJ+VUgczzuHNDMR0/NnPXCYEqV7z
	4ONoy6k8NadkWnJgLFeOyMui4Cchy7fwXo7BkDo7yZ/DTVVDrBLZtctUSESNvZBQloIkil0x/Sm
	diETwlZjBk5mvtpZqBcGXsty09LBxjWKaxh4xE922Lv318V1LwY/Mo1G+ASBkFr7pQdtcu6Nv5y
	hQ/VbMU0LAH4rAH0i075nwbq+mUY8INziDzw5umRhj70DsD6GibK+ToACWlvNyZ0VmLTECBrF+2
	wvLY5O2Ht894Kyg9+KLzUe/YcFJvaELQQ7u+1ZpEll97IUNJYrX+dGcOrIHS4+OWyGPl4VmyVEE
	E/J9aGEINBTFVB/ExZXKQcZnoWNCmqA==
X-Received: by 2002:a05:6102:a4b:b0:5f5:514f:4e59 with SMTP id ada2fe7eead31-5ffe61835e6mr4225417137.27.1773058121935;
        Mon, 09 Mar 2026 05:08:41 -0700 (PDT)
X-Received: by 2002:a05:6102:a4b:b0:5f5:514f:4e59 with SMTP id ada2fe7eead31-5ffe61835e6mr4225402137.27.1773058121350;
        Mon, 09 Mar 2026 05:08:41 -0700 (PDT)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853916624dsm107826075e9.6.2026.03.09.05.08.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 05:08:40 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 09 Mar 2026 14:08:18 +0200
Subject: [PATCH v2 3/3] arm64: dts: qcom: glymur: Tie up the CX power
 domain to GCC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-glymur-fix-gcc-cx-scaling-v2-3-d7a58a0a9ecb@oss.qualcomm.com>
References: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
In-Reply-To: <20260309-glymur-fix-gcc-cx-scaling-v2-0-d7a58a0a9ecb@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1064;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=1sn78LttMrRMUezN4gisx8QGKM/WL0hmkjnpTYU7Iwg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBprrg8fc4+sPoKdDY2Eb5taRX5DOH6v3Zl4lLW2
 ijciGbLme6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaa64PAAKCRAbX0TJAJUV
 Vj18EACf4Ia23JH8NmLv3m0caYlOVVU21xeaPcgsVvA+sOFbskmtYAYOHma4yty7t5LYug0Rm67
 2F87KyGnUiFGTDr/NPM5NwvytfFTX6dngnhMVDSaFo8Gwfnmynar0Q2OnehYz0GevkqoWnLpoTX
 cZIAP8+yN5/GagaTDlNflw13g2qHyC5YSlEOjqGHq2sYi4rI1sGq57Fb+ilgnGI6y3wgQDouXM5
 wHfDLnWq1e+JtjcsW21z19i6dPeJi3WZDUr4muhf3LXI9xnbn8dwgmxh8CWiGz0x2B515XNLeSE
 reGT4nDOcudBAP/CQP6LpvzJRuQkArdG0igqGLeczTF/w6NdbuJANuoUu9fHNy6Vuw6XcjSwLJW
 bWFkfgnA8Tb5Ja/HHzrq4qnPzAyo/V9f/b+TfmrZX33r1UNvHyLdzbbWtawB6HDCqrjnz3db7/0
 04k0Yulx8++PCpC5MIxTnIpfBnfvKVWHtEvceYCceQotEo7Cng2SoWQlUVMa2VslRXtlHGo8Q3/
 kBzRs2uTr7jOoHo5msTwIFMizoGIKQTr9Mv0kQMG6qZFMQGngug0Jd8AHONzU6E+fiTVC5FsleA
 2O98b1TKlzrYJjozpZy2NByQqaWrmgxIjdqpG3DzwreYYapFNEqgXW1z6vqBmzSw2uMTQJxugNK
 c5qq5fYi3XsDMYA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDExMSBTYWx0ZWRfX3oTqYHbORv43
 8Enm/h/DX8FzJoV5Vs1nLm2hO7Qc1deP4ONp9e1rAUc2qjGzKMY3WCqvKG3cb38jVg72e+MvGCN
 IGJVgN/Jo4JsVoCsWJiKBQB/A5st0Nc5t4Vfggii/2m0tyb8883/Ywcb+8vYIqfxqywYW1g7CGl
 114zJBF964vVu3njskzZu3jagc+gUXZCLckLUxJCIF7CzZ3lOnwTGouzsrWYZt3ncK5deDGoZ7g
 u62/Uu+Xkrs6OQPTATETQYjb8ZMVFMnV7aBPUk0TP5eioCeAMUiGZqKXOk4wizCEvaT0jQEx1Jh
 4gy3JFc5rcC8UzIl+9NuMBvRf9bXin/OMYTuI1aawg1xHSM3Y4lesVDPI9jxGkkE0XV2NilPPN/
 S5kkojoMw08cyrrJ8vSdWDXjPDV/5e5b1IYLmRb6g6tGSBWPgMDDY6+h+eHf4fXR3hAHX2j+0EZ
 iPK3Of0DUicSiX4cAmQ==
X-Proofpoint-ORIG-GUID: hhQ-HanLC84NTe69XuB6QAWZ1mBl3Ik9
X-Authority-Analysis: v=2.4 cv=QZtrf8bv c=1 sm=1 tr=0 ts=69aeb84b cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=UtH7f_zyWO5jlmvt-A0A:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: hhQ-HanLC84NTe69XuB6QAWZ1mBl3Ik9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090111
X-Rspamd-Queue-Id: 8FBFD238B70
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	TAGGED_FROM(0.00)[bounces-272909-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.12.53.0:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.1.134.160:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.934];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

It has been concluded off-list that the Global Clock Controller needs to
scale the RPMh CX power domain, otherwise some of the subsystems might
crash or be unstable. So adding the RPMh CX power domain to the clock
controller which will result in all GDSCs being parented by CX. This way,
the vote from the consumers of each GDSC will trickle all the way to CX.

So add the power domain.

Fixes: 41b6e8db400c ("arm64: dts: qcom: Introduce Glymur base dtsi")
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index e269cec7942c..5f8f208f6063 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -764,6 +764,7 @@ gcc: clock-controller@100000 {
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
 		};
 
 		gpi_dma2: dma-controller@800000 {

-- 
2.48.1


