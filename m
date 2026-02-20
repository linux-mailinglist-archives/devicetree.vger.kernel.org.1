Return-Path: <devicetree+bounces-266890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDXBN081mGn/CgMAu9opvQ
	(envelope-from <devicetree+bounces-266890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:19:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F72B166C7C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:19:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5791F30A71B9
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A9633C539;
	Fri, 20 Feb 2026 10:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OYsrHz/g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CxYkBIRH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6160A33C1B6
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771582635; cv=none; b=V8rwIeqTBhmx4419vtZ0JIJuHsL+y0mbewsIi3KCCFrkCU6e3LQMvkfrHwMExCwa/0bQE5acczF9fNgl6StWGNsCv1OFDeONfXWAwHd1bAqtK6XI5ndz2Mw2ydYnGs6VGKHzwR8l8/JdYyFXzBOWKGlhFid2HEwQRAM+PaMEYBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771582635; c=relaxed/simple;
	bh=YUF2Lpc14vnrqfL9c7jaSBUxlZWSVJyQ11UiVDmzeUI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h87YeD/YazbniTa8VOXprwToHCKQsLna+/eJJOZUreYRQ7k1logDA3mvNREd+jqA26HKRiEnl0CBAgdJr7nNypGBsycXsaYYXpNstJQFauxRNbzFWCqbcuB5ohMEYiHaWqQO9j5irVnPxrRlYYdfIfOhCi3EATtXCwONRzBr9vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OYsrHz/g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CxYkBIRH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RmSI3697692
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9zxIjluGbFJXiMSnJoVOP5bn3ldhgAazUHtGyciCHdM=; b=OYsrHz/gZL0nboax
	RGx3tyJCm9yiXhg7X65raCFQs2gdwIKzRIx0TTxSqb0GrrMGa7wQbih7wd7ibsqr
	GMDAyclDoqN+1/Iv0/doVi4VN7E7jBckLLD7Prj8RK9DJcr+WjU79VNavR6wEcG2
	0MdoN60Or3Ug6pQ+VK0b0sxj5N1rhjATtqI67xtcI+ensRpJhaFpWdw8/E+bOY0n
	wvZaZrHe7tzIOxDHvt8oHitAk9BAdDgFHnZtlV53FJRHRrCymFVzqrxfK4S6Cp20
	xg6ZPKZops1xQ6W8Fp9tbKPSQUg5QoqtXofSxINaObpnzd/G/UoiIQ9mDE4CoOXg
	6sD55w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ceh5jgq8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:17:13 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35626b11c51so1454039a91.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:17:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771582632; x=1772187432; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9zxIjluGbFJXiMSnJoVOP5bn3ldhgAazUHtGyciCHdM=;
        b=CxYkBIRH22GZoaVuG2iGn8AvkNeu+q6zncfRBTaKQV3YwZkFqTJcl64unVuuwdT2HH
         98w+lf7cLrNl50ifM+8Q2GBZDVvrO1NnBbaSdyje0r1gL/IUkyaBCXkwiWD43L/sbEUH
         arYHbUyNA62mVX6SQL1sP7JLj6ltOCry8/tL2WJAtfDFVcEri0g+eoJZRd1+dwfGwmSr
         SO5d3LiH8RJQImshI4X8qhky+gD+dpyUrcuFfH0a2oE8UmEHYtnYGT5gZSiQxoMninQl
         yWCWAaGri3Qrn9liOLeEExT6AbsmuQvTlT6mXwu1qwFilavJbL1NtfOqJP4saQFqHsm5
         CJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771582632; x=1772187432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9zxIjluGbFJXiMSnJoVOP5bn3ldhgAazUHtGyciCHdM=;
        b=PIrD1itCwC/zLPGYq84UJX0p06M/XYYFO68pQqtYJz14uvXQBBqsPit1gvcvJZQaXF
         DY8Ct8EDMIgFyDwQv/Yy+Mlu5rcbQejYpVWb2dpoKqekaAtEfVeTrlNbxY3XoJsh4FdA
         mjpfadghX1KCX8ZLkJEsueN8c1pWUCBeUhHs0Ic5OKDuTj4B6obHnc/9lJktzh17MjWt
         l973T/B9sDUnzASIPGydNPJG0DZr9/GjzOGHU4YgYxgR2fUMzZ0qSQmVwRPKGCAZqIUa
         Rel/Y/6CBO+bHUi6kQ8UTROYpPLoat1rJYDRyODt+BleMnlalZVW4HKa8I46xn1/VZxC
         sw7w==
X-Forwarded-Encrypted: i=1; AJvYcCVEW0O+tzYbkS705y+oJZc96ZkwxJdPb25XaJ9/GARCJ/abhIlrX46IbBI9LuE2ojLBZHv9w75UxCkv@vger.kernel.org
X-Gm-Message-State: AOJu0YwNdSsYkei+9LbpWf4g/MhvRNmM8uTPDysAhGZimd0vqWqz6Teu
	0qmJedoLVy7DfZqcQYe0b5NgrRWkdSQ3yGQNhT0KC8Ppp5DQ7xNzUWj2UYZCsVVoV8JkzWnIPYu
	QLS562cKBp5+KlrRMoQjVjA6A07mI9OKEdd8oMcVBkjjkDqCPyucISio3j+yuNTDP
X-Gm-Gg: AZuq6aKbK00a5sAcDM4+1e8jl4Su7Ap3m7qllkui8ks3CNIsCu4SkxbXsNKXmyKbJ9S
	gDE2UW1FF//zH6tgYI96VXcXyy5qsUcIBl3uuVUoMDV3IcSqKAnHdCVCs/DJ4XgzjMgCp2A40kV
	ug+3wkv0BmAPKYiJPe6jzFGtnAjabQ1PHGSev70dN10DlMx6ytJoDYo52H1u9NwsUmX0D3Q479D
	rAWxotkVw+erFyJ9vKtN9stkWsoomPlbT0bGsGELAACAH2orlXf55DQ9l73kZeglJ72kvKLTbbO
	ZsOKKLT6lbG++W93IPmvEBz0cSWDj90a3ZoRsPepuVuh44HeJTxmt3eIa6cjOQUxnd85oRp5Kzt
	mrRzFu7aFIKUj1pe1mH/J6yMj3Gk0w+7EvIFxPhtYITn18w==
X-Received: by 2002:a17:90b:5111:b0:34a:a1c1:90a0 with SMTP id 98e67ed59e1d1-358a677dd78mr972324a91.28.1771582632347;
        Fri, 20 Feb 2026 02:17:12 -0800 (PST)
X-Received: by 2002:a17:90b:5111:b0:34a:a1c1:90a0 with SMTP id 98e67ed59e1d1-358a677dd78mr972312a91.28.1771582631872;
        Fri, 20 Feb 2026 02:17:11 -0800 (PST)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d81c288sm2768391a91.5.2026.02.20.02.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 02:17:11 -0800 (PST)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 15:46:58 +0530
Subject: [PATCH 2/2] arm64: defconfig: Enable Glymur clock controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-glymur_mmcc_dt_config-v1-2-e0e2f43a32af@oss.qualcomm.com>
References: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
In-Reply-To: <20260220-glymur_mmcc_dt_config-v1-0-e0e2f43a32af@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Authority-Analysis: v=2.4 cv=Raedyltv c=1 sm=1 tr=0 ts=699834a9 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=rO3wVDe-YCVyVCuK1RsA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4OSBTYWx0ZWRfXzGE+3tgyCJc+
 /JLnqei6MeQSM5x5a1M4mCOTLp0iyiua18Ui8O2VzH4V1Vxh5Pv3Pl7a7cKkVoxZxznMJXA5DO+
 MkeeOZCESex0uwdQ+cis6AHBJ/R7VSQWVjhLr5R0PgvPK3CeMrJyVVIOm/Vf7ivZvEWVhpCLY4v
 8D/a0O3N+4QozJDlSfNCIOQsNQEjYtwBuUrBTWcP/3QL3vY3C0dScEUFiW++OdkCh990l6DDcVA
 P1xD49C6qBpu5vsq6POVu3LVP/MJjS8tPCQWXHrCwQ2/R+WVEQs3Cltyzl8Yd09q6EE7S2st8zV
 WxBXJO5UPSur0qfceQmz0i2oqMdOncxE9F5IhSS0sat7UeYPlPN2zxKBulkAsHC5jc9QMYTDbAA
 AzR1fTU15Sp61lEEGTyUofZ8TfGU/5HEeXkI5OHwoY/DlPbKgxqMyXpLwnh0FCCUuNOgyqLrEMp
 D/tV1m6r7as5ZyPUbiA==
X-Proofpoint-GUID: kMKMMmfvyluq-RHmjUDyFbAqCLvGkcjX
X-Proofpoint-ORIG-GUID: kMKMMmfvyluq-RHmjUDyFbAqCLvGkcjX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-266890-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F72B166C7C
X-Rspamd-Action: no action

Enable the Glymur video and gpu clock controller for their respective
functionalities on the Qualcomm Glymur CRD boards.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d3ed35d3e6a4f904004942ee5637a332ed8e6105..5d635e38e2af3dce417688b3acb627ea7e8d6369 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1457,7 +1457,9 @@ CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
 CONFIG_CLK_GLYMUR_DISPCC=m
 CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_GPUCC=m
 CONFIG_CLK_GLYMUR_TCSRCC=m
+CONFIG_CLK_GLYMUR_VIDEOCC=m
 CONFIG_CLK_KAANAPALI_GCC=y
 CONFIG_CLK_KAANAPALI_TCSRCC=m
 CONFIG_CLK_X1E80100_CAMCC=m

-- 
2.34.1


