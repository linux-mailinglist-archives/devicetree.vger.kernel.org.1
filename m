Return-Path: <devicetree+bounces-270056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAYEIRWhpWmuCAAAu9opvQ
	(envelope-from <devicetree+bounces-270056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:39:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6391DB026
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 15:39:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADC453071426
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 14:26:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FE7E3FB07B;
	Mon,  2 Mar 2026 14:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WIzI2SDp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gyAFFjBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B78B33F8BA
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 14:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772461570; cv=none; b=fAlxh3i81RPNBift10MbBx8y6FfdM061Yn6zfVJi5UfWcmM0q0TZOe5p2E7WGZ7wzP40ZpHPFEftF5GoOVX6OYD8qaSRuPoG11iNPrFYFiplRfZRyuMa4soGqbHlI1QDpyjWkpi20dDrW1RWLLVveNDQmqOBFzQVn2dkdcJu1wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772461570; c=relaxed/simple;
	bh=CozuTtsQmrjIREJ1CnaBYC+hfRFACh7pszTPstMo44o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=c9bFILdbJ9otnUdW503y6gcdVc+i2i/srvGoKnbWAn6GB9f5fjExbi6QHCe/W9uk4eUKA57+O1wPoX9CjlZckhJ6nbWqzL9GnwQPSTAWoy5UBSOhUpOvzdYY62W8zQ4o+v6kswY3fEoLIyFTfBv7BYzn+W7eADoVhOrpYw/+knY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WIzI2SDp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gyAFFjBY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622EAgGS662314
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 14:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=sSjnoDZ54pYDcZqRvr4XIg
	yQqmucmNPI9U5fbhk9cLQ=; b=WIzI2SDp9j09DZOMwyiCwBha5XikE+NqlfW3GY
	kKYsWWGKrnvwzzUtM8v1WHXoazXXrMJPQhp9oH8ZYjt6dnEcNFuuON0U/w6PjnGq
	x6OxA8JS5QDhwRTeVia9hE1/Ol4T8Js0xvQnauOU2nAhwJ2ng2DkD5qzF6w1pGp3
	mDOUIGG12ySqFRGldno8mzKNz2EAHc7kZCkkvUMCMmb/AFfkAi8Pnzakbmhvyl50
	ak1cnkNBYYoUMIUMgrEjG05oqE0VakPOQNAcJb/uVHsPOzTXFaWuyhEbTWswQ3N5
	h8KtTO0yM2N1DxHRxyQ3ffY50MoyErlO3LDVOMEaZfFJUgDA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2sbmw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 14:26:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899edf01747so156681786d6.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 06:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772461567; x=1773066367; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sSjnoDZ54pYDcZqRvr4XIgyQqmucmNPI9U5fbhk9cLQ=;
        b=gyAFFjBYDQMXQQ+BItqjgbbLzlXRNFordwee9PKntra0JORA+7HtHheTEFnOg6MPFo
         KGR1Q0PPSVLERpEVA6Z/17wch5mwmVX5C93arLkzYxwDjRRj/i4wxJDfKSV9q7c+JKnC
         lXAXas+ujre43ep5w+7w1BoRpWj48nyG2n7W3xi1zVoEH+4kS8sE45gq18kFv4Vnw0Je
         vG0hq9XWBFfnNlpTsFZ8983JHrbu10D+bs35EnbmqZ39T1tZ3Rv5Kb37eINKWmiMi5sT
         +wt79AeqxFnZarsxQX64n0MXjxU57D6+4m2NXJfpsJTZmw3UA1F3vZO16cmq59mvGE0U
         yj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772461567; x=1773066367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sSjnoDZ54pYDcZqRvr4XIgyQqmucmNPI9U5fbhk9cLQ=;
        b=m46zSzbi9aGHTbM61loNLPgu/Y4A5pb70gAkx8+aec8VRdPABQo1HNlxdm/A33AVzG
         6/JADccAEIBEITjFT0OWJd9N+XTL3HEu0VWEILAdESbe01xYB9BViYqtWOUu2EqSB2eE
         M9OLj23gU03Ge3izBXvObK8XknNQ4ZqLn6kWyJM3j00HD/rjUgIRO1qhvVB1XPAxDNIj
         2U0IyJtYdEoUDVu1vaPAeTX7EPJPM0J0MiuZApOpFf6tHS/T+iRyP5vTf+rM+9t8v15w
         flX+bgWSD1xY3SIJhgk1mnhaTSD7zAme0y4fQD2jjPPvIyRrmvr7IiGzTBSjh5t5l/GU
         7xAQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOv8pgopzoCcHa4OMl4MOBfIWRJKElxXbWUHqqn7pw70hmFbmZ7xLuuwBgxnj8gNhSj/Lw/tsKwBL2@vger.kernel.org
X-Gm-Message-State: AOJu0YxKD5OHhQjin5ri6fmWETVNt++PGcuSZ2SWVTSC4LnKZbK77QHq
	aLOz3i8c4OQwyNlDXhUm464rT/AOxshXqvNcDkNme2BmLZubDl4/bdKKk/u5WwXEX/Y2etT0YmD
	YOVX9GksNv0zouesbhPfbleJf0ZzQDQ01WdIdmmGnRQhK4rUTfxbthEpWWZ8cJZumlqP6Z3xJX/
	g=
X-Gm-Gg: ATEYQzxh/7JtasFbZCxx2gVXvDeOfidHTRPy6jiMdSwPHvhb+lCSPtk5r7YMkSXaTyb
	F87jpspLSFUCjq3Q+Wvdtu3rEkY/zQorynpv0QeAaEc1sgEU5SIsrmjOvt/bF/0cOcyk6JmqQkr
	jmA+0ZLWibIQWAoC86dGqKLdHfK0iyb/yOb/e99on+PEMhYlRzlecKYnPDCKRs7YZey8nxKdrw3
	mtSyNH2QWYAhS3H0RviFtmH2YA+48Ai7Hj2slFFdtwCikNqIy85spLJBcV2zU266ZgImNh6BuEQ
	6wWE317/955HlobsQs/8jifrAWRmiH5JDhWVWvISJOltdJY+RFJ2m6jKYmW6UglYUhjvp1Xrg74
	MVSyUXKssJHuxQzl4ZBE6zKblY3FMrGJ6Za1k95+HwHMaVmXmD1/SM34P1vVe47mIf/Cuv9SWB7
	nCD6SK2zQ627mpr3f2FHTnlyY4npXlqf+VjeBx0nlIiA==
X-Received: by 2002:a05:620a:4511:b0:8c7:115a:d0e3 with SMTP id af79cd13be357-8cbc8df6f1bmr1596781085a.37.1772461567064;
        Mon, 02 Mar 2026 06:26:07 -0800 (PST)
X-Received: by 2002:a05:620a:4511:b0:8c7:115a:d0e3 with SMTP id af79cd13be357-8cbc8df6f1bmr1596777285a.37.1772461566593;
        Mon, 02 Mar 2026 06:26:06 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com (82-64-236-198.subs.proxad.net. [82.64.236.198])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fac06e48asm3524873a12.29.2026.03.02.06.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 06:26:06 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        quic_jingyw@quicinc.com, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: monaco: Reserve full Gunyah metadata region
Date: Mon,  2 Mar 2026 15:26:03 +0100
Message-Id: <20260302142603.1113355-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: PifcIFH7pmMP8XbvMj3Dk_0mYJLHMwdn
X-Proofpoint-ORIG-GUID: PifcIFH7pmMP8XbvMj3Dk_0mYJLHMwdn
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a59e00 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=MDeckJw97qnk8wCBExTehA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=ifPCz5NSfmjTQMQ1m90A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDEyMSBTYWx0ZWRfXyfyZvA5u/FV3
 2LVNRagmW1LiSwRKPvLYWdFDO9rDJaN+3tn/GG0mGbnZ4BMdYB2VlRfciETnKGP4WRMOMwDXkMh
 ma5C9k+UdBt4mwJBSR/JBVMKtvzKTkgsmp8nqICqVf9GqTb0hb4pLdl4E9emMzLzUc5zHyGqjfy
 3Ja2VjQSotS5xQ5cIGR5tSelCXMyv4GnPoOAwxcWL5t1whBAvQNKCeqpDHhqqj6cntJ1s2xS6m0
 cvAkwEE2/ckpVVr+sUHDlo5yRX0BleKH98TfwjTn+0wBp2jV097MH1l/YFmgCJWm//46VlTqDSQ
 PxX5m0gJ+WMU3qXNxMN73SwFvc/HHauhNUU07If0Bu3uPm65LoWhKmRkPxvGwg7fh/+Jbailt9x
 P+1q0nhKeKx0qbnubKHDA14KOtHdZ+8ExTK9tL8OF9pCh/oNcGutNz01VhJCgDf3kEXrM07i744
 sC7EDGrCK06oFo00rSg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-03-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020121
X-Rspamd-Queue-Id: AE6391DB026
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270056-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

We observe spurious "Synchronous External Abort" exceptions
(ESR=0x96000010) and kernel crashes on Monaco-based platforms.
These faults are caused by the kernel inadvertently accessing
hypervisor-owned memory that is not properly marked as reserved.

From boot log, The Qualcomm hypervisor reports the memory range
at 0x91a80000 of size 0x80000 (512 KiB) as hypervisor-owned:
qhee_hyp_assign_remove_memory: 0x91a80000/0x80000 -> ret 0

However, the EFI memory map provided by firmware only reserves the
subrange 0x91a40000–0x91a87fff (288 KiB). The remaining portion
(0x91a88000–0x91afffff) is incorrectly reported as conventional
memory (from efi debug):
efi:   0x000091a40000-0x000091a87fff [Reserved...]
efi:   0x000091a88000-0x0000938fffff [Conventional...]

As a result, the allocator may hand out PFNs inside the hypervisor
owned region, causing fatal aborts when the kernel accesses those
addresses.

Add a reserved-memory carveout for the Gunyah hypervisor metadata
at 0x91a80000 (512 KiB) and mark it as no-map so Linux does not
map or allocate from this area.

For the record:
Hyp version: gunyah-e78adb36e debug (2025-11-17 05:38:05 UTC)
UEFI Ver: 6.0.260122.BOOT.MXF.1.0.c1-00449-KODIAKLA-1

Fixes: 7be190e4bdd2 ("arm64: dts: qcom: add QCS8300 platform")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index 337e5ee0e520..1daa4ad215ba 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -772,6 +772,11 @@ smem_mem: smem@90900000 {
 			hwlocks = <&tcsr_mutex 3>;
 		};
 
+		gunyah_md_mem: gunyah-md-region@91a80000 {
+			reg = <0x0 0x91a80000 0x0 0x80000>;
+			no-map;
+		};
+
 		lpass_machine_learning_mem: lpass-machine-learning-region@93b00000 {
 			reg = <0x0 0x93b00000 0x0 0xf00000>;
 			no-map;
-- 
2.34.1


