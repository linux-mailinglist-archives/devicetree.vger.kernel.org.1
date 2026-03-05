Return-Path: <devicetree+bounces-271373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPXZIIgiqWkL2gAAu9opvQ
	(envelope-from <devicetree+bounces-271373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:28:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E8B20B91B
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 07:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74515302D0B1
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 06:28:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A4C3368B8;
	Thu,  5 Mar 2026 06:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="faIu8x4M";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LGXHoVRt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6FD2DECA0
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 06:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772692100; cv=none; b=j4nrqG889nf1QNF9U/BsegUYQPJ+/O0ZDw2lVtlk2JT+PNIIyK70INEigVi+2X2J/Du3pIU/QCpr2B1vV9oSSYbUG0kv/ftAIsXHkf52GufMjHtf35MDWYrQJp2X80MjDJ1HeiYME9JhIYLeoJ8Eivd0XQjPujAsbXVvLHnDTtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772692100; c=relaxed/simple;
	bh=4ZsXx6I4m+/kdfe99q4tYLEpgAyuiWmYPw536w5DT5M=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=c1ONhFjOq5gh+tSlKEDXNcXs3xBbodTxQ4oTTvWeivtQlKdFw1I6eNE8ZVEVRn2witLvWU00GK37QsMm5xTfpP+ArDYHz8Rkx7Rq7RVPZ6bA5b9yYeUgA+C3HnOlpCyuKXfzUecqv598y2IJfBhtzj+g0y2Xhg7AlfJWOkARs0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=faIu8x4M; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LGXHoVRt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6251NxDd3665136
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 06:28:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NBiOAj6MCtfTD4TvDBxgPZ/PXk95ruUstogVhUh6ov4=; b=faIu8x4MUcCONgMb
	Jvjh6Q+Rw6Mtn3wzvPZ3eLncElgTzp/SB6Te5KyllIM53TqnO7bcWHklDABMBYvu
	94u6Uf9flRyvAFyfr5RziB5mc1SwLeITCKCVt0VzWv3FM5twyaOOD3kXeiNbUZ4g
	0nuL/IAu7fuCbwF0WqeKoIUabfQy0WE4mbYT3yGjw3zgj25irauXdRRfbEWHPe2/
	rqBXKdi8T+aIv0UUh8jXm43uxGnN5GOwulVEM/Eqp1cStS4vvhndtUnp/Ygddf+/
	kZLiFjrf+cn5QueQVCNloG8kL3uHjqaQwrCwgMu0pQB4uXD3hOE1B+DC1wQ29Sf2
	h76aRA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq04u0tp9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 06:28:18 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae4a6bb316so44396265ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 22:28:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772692098; x=1773296898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBiOAj6MCtfTD4TvDBxgPZ/PXk95ruUstogVhUh6ov4=;
        b=LGXHoVRtWuLjFJT5QeDuvza0J766uaQwHpQCLacCFw2WD030y9r7by7/+K6MyvhF5+
         uHs2o2QFlkEYH2TopPe9t+Pmz9Eyvb4/IGCTG7j1WbE+K8RzGuhvZdIVaTeBsTZYy9t+
         VVfWTteMnUSUsGjB3v62Tj2OG3IgsCcFGWE6R4G5BrLOiNjTIe0J4A4rKxj5ZLjvlcEp
         cGVvGBaG8a6jDXaZIwwrs8LsQJSXXgqBPSDF7YDimm3je46Qy06EY02W4rAcpEnxh0dV
         vswpSP/5wXPFA2RygrQgAcKCJ8fk2rv7XPdF17PsDdz0TAtg/e+yDvqEIAMNTu3l+tYU
         oAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772692098; x=1773296898;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NBiOAj6MCtfTD4TvDBxgPZ/PXk95ruUstogVhUh6ov4=;
        b=xOYRSWbbVKPIAwahsEQ0bNO0w6uJHPA4rMu6um1QRbdTDEzL1QldhZgCsZnt+4hc/S
         n+HzQIrCLO1sP7lzuDuDQjfBUqsPW5hoDGdkUtefyU92iLaZQIzWsSE/UEbB7itPqVx2
         Zi+cHVJlYT9ls8a078JSDs1hH8vhNecU7M1XdfNio3U/5eIyS9glZWdpPJ7u33ksuC4f
         3eh7gKoc1/FeESIklGjNOA+hkrW98lMaKskUVXe7fxXnJGu8IEtiJZFE4cuUyiLZY8Db
         kXTEjgnW2ILU4oCFPHo4L/XmZ09FqdjbMJ1ITHhIZ0auEzI8PHg+28lZyvS69+iv8lSy
         3rqg==
X-Forwarded-Encrypted: i=1; AJvYcCX2AmeR14mWlq3P3Oqg1P5E5/pj2ZQUyjzDpfjFUCktyQ23TWaapNJgvcnuK6d+VcarWl1Pq+savwNK@vger.kernel.org
X-Gm-Message-State: AOJu0YxD80Y4cKxQ1masVyPNwH2K44AQDAhrExHHevKX9r2ciQoud0Vi
	YBGgCopD8L9/IfQVmq+O4xsgp+/fiEWMJSGrCZhYyAJBsVwY2rrz4pHfwr8hZhi6Noff+ym8tLk
	jNN8dnKiDUqdWQmBbfLNUfNfbHvYS+BUkr7+4hW4n9VvxXoXk88ahW/s5R4XwQnKh
X-Gm-Gg: ATEYQzysW8mpelX57IgY/apT9QRHNGFBNLT2O4T3WooMuh9VC7X376B6Yp4Ykt3iQ0L
	GWunEaM0k4I9qHMtvPIVgGEMUwRbpPEkl3Q5uizhYixEc7uch0Y6+AaWky0IaZn6rICOEOMzco6
	CCd99DaVdzQDZQDHQemU+tWT/gfhlj/x8tFWi78ftqc6nOoa/M/NOg8KW6oI8WeZ6WB6Bbu65c2
	baB4/zk99i3VetE+8pTP3ScTMAPLv8FjQVhN8wiXjXXnCLCBuDr/2HYHKI5GpdYiQeFefEL2C2w
	Q6ZY9EIdq7QWeQAwhXmxGr3OIiAJbvdEIy8tE2c7pSlV9ybCs+6dLcC1trgL67EfVRG/Oghj9A9
	LgXNWDdEVKBv7SjP31J74/ZE=
X-Received: by 2002:a17:902:e952:b0:2ae:6887:5c2c with SMTP id d9443c01a7336-2ae6ab9d5ecmr48269095ad.50.1772692097756;
        Wed, 04 Mar 2026 22:28:17 -0800 (PST)
X-Received: by 2002:a17:902:e952:b0:2ae:6887:5c2c with SMTP id d9443c01a7336-2ae6ab9d5ecmr48268675ad.50.1772692097226;
        Wed, 04 Mar 2026 22:28:17 -0800 (PST)
Received: from [192.168.1.2] ([2401:4900:88da:227d:1b86:2ae4:5dce:122e])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae4bbdec99sm153479575ad.64.2026.03.04.22.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 22:28:16 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: linux-kernel@vger.kernel.org, Randolph <randolph@andestech.com>
Cc: linux-pci@vger.kernel.org, linux-riscv@lists.infradead.org,
        devicetree@vger.kernel.org, jingoohan1@gmail.com,
        lpieralisi@kernel.org, kwilczynski@kernel.org, robh@kernel.org,
        bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
        alex@ghiti.fr, aou@eecs.berkeley.edu, palmer@dabbelt.com,
        paul.walmsley@sifive.com, ben717@andestech.com, inochiama@gmail.com,
        thippeswamy.havalige@amd.com, namcao@linutronix.de,
        shradha.t@samsung.com, pjw@kernel.org, christian.bruel@foss.st.com,
        Ghennadi.Procopciuc@nxp.com, quic_wenbyao@quicinc.com,
        qiang.yu@oss.qualcomm.com, vincent.guittot@linaro.org,
        vidyas@nvidia.com, elder@riscstar.com, s-vadapalli@ti.com,
        ciprianmarian.costea@nxp.com, randolph.sklin@gmail.com,
        tim609@andestech.com
In-Reply-To: <20260225085504.3757601-1-randolph@andestech.com>
References: <20260225085504.3757601-1-randolph@andestech.com>
Subject: Re: (subset) [PATCH v11 0/4] Add support for Andes Qilai SoC PCIe
 controller
Message-Id: <177269208749.19225.17035061961654742152.b4-ty@kernel.org>
Date: Thu, 05 Mar 2026 11:58:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: XGkRHhV_ESSytk1q2CZ3pMhP6TxYKOif
X-Authority-Analysis: v=2.4 cv=eqTSD4pX c=1 sm=1 tr=0 ts=69a92282 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=ZT-azI6cAAAA:8
 a=VwQbUJbxAAAA:8 a=GRD_o9NNUOsNfMSRe4IA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=MMnepr4wVL9Sz6vaZzge:22
X-Proofpoint-ORIG-GUID: XGkRHhV_ESSytk1q2CZ3pMhP6TxYKOif
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA0OCBTYWx0ZWRfX1Zc9w9Iws0KZ
 0f7P2bRVWPHBlLJUKTt4rs1YQqQXgGc68p2iq7My4GJu8N/18PUyfgANyhLU7QAIw+cVmej9eP2
 CkYI3x9DX6JonUwuFgnN8a1jBLuV+Z9Cy4AC95hE6V9A1gTvDvwHAqc5VO3C/MXsYl+GJjC9hwp
 Od/UdTRiMX/KHs3EZuB9z9yr4HmbY+3LCvVfLhmQImQXik2iVRwNweKi4ERsrmpaWCt7yGlhIF7
 xLj6tGTHep1vLInnyS5IT/psi2mjzmES7iIdrxa4TF0yfO90pinVYxDn1CNZerCQxtT01QxSWZw
 zer7uh2CayvV2v61FFno2qDQO+FlxmhYolwHuj8rH7f/c4fEL7pIlw5NeNGoL9teodJoEAIYMoB
 s3Gl2NisCpO7U0Rbl3y8X139L5z6gozOUSEpDQE5U6I22wWXbLuVnxYa0DEVnyOE5Dj6kFd3FAz
 YPDUOyfGD3IRruZXVgA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_01,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050048
X-Rspamd-Queue-Id: E1E8B20B91B
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
	RCPT_COUNT_TWELVE(0.00)[33];
	TAGGED_FROM(0.00)[bounces-271373-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,gmail.com,kernel.org,google.com,ghiti.fr,eecs.berkeley.edu,dabbelt.com,sifive.com,andestech.com,amd.com,linutronix.de,samsung.com,foss.st.com,nxp.com,quicinc.com,oss.qualcomm.com,linaro.org,nvidia.com,riscstar.com,ti.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,andestech.com:email];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manivannan.sadhasivam@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On Wed, 25 Feb 2026 16:55:00 +0800, Randolph wrote:
> From: Randolph Lin <randolph@andestech.com>
> 
> Add support for Andes Qilai SoC PCIe controller
> 
> These patches introduce driver support for the PCIe controller on the
> Andes Qilai SoC.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: PCI: Add Andes QiLai PCIe support
      commit: 6bf2305ea846868dc1ff9004eb3f61a6590d8431
[3/4] PCI: qilai: Add Andes QiLai SoC PCIe host driver support
      commit: df5d8fb6fe55754bc2956e501a9e6acaca5af7d9
[4/4] MAINTAINERS: Add maintainers for Andes QiLai PCIe driver
      (no commit info)

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


