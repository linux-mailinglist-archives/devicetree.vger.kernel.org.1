Return-Path: <devicetree+bounces-265011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNrFGZWtjWmz5wAAu9opvQ
	(envelope-from <devicetree+bounces-265011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:38:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D155912C933
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A5F13033275
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABCAC2F0C45;
	Thu, 12 Feb 2026 10:38:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bAwf02t0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hd5sJTIs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F642D7DDC
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:38:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770892684; cv=none; b=haSki5iDodPjVxmp2rduIIlFW4jCwEsK3l6dTmvsERIzeNOiQD3QzNDmhNDh5JmGH1pvvpmQgFjoTH+B/NKOA5yzUejoWhmc68xBeTbOKG1CqPus+H0XS2KpESUdcAvGZtAkS3voDnl9feTX/BJnCKS0pO06ANo8ERWg73NzDMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770892684; c=relaxed/simple;
	bh=dzivrYVlNO2Gn+ga2q/0v5yze+ovu0iMlHs2iGufm0g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JiYAiQiTraCKi3lifECQ5T9iD//KLlijmdRRyjQtPg7oT3VNkdj2Gt8vw3SDkNGOxeRU06xBsIC1fQKvR5MzmjerKvQknzp1yHOBulfW7sbCz1QqEkHYOgWONv3ngm5xhWKgHiiCOGrU+cd37wfpbR3Phk3+BKuFyrLuasXBe6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bAwf02t0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hd5sJTIs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61CAGD514112059
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:38:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7E6S3bjat2cxjUHSftIQdUL7rqVbAfh3aOYtI8Y17Ec=; b=bAwf02t0MyG/GtM/
	2g2kanFqZz4clxYE+FH2QDr0kGthcClGfExw8901dlMkSAplHjrIXaTD0JsP4zOK
	t7cDqPR7WhG/ZldIaKKffFt0u6xRQja+/u9AYNabAi9NJFTCOSgyMTNdwYZRWR9d
	hGigQzCH9sC3ZZB++jyhQyaDP8GZX2QANqeFNuqBl3kAVAt3pk20y9BCfPY5uH8k
	AD8/cnim/8IV9CYBkLIJXuOrayhc7dXaUiyBZDwUnugAT9dd6Ivn24U02TAp4CCd
	ONdDp8XbaPPYqQETLc9ZU4sXEaxPXK/257Z22u/0ycuCfHUYP+DOj8OV6Si6fHoC
	dZN2Ug==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c9cya82ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 10:38:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70cb31bcdso164869185a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 02:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770892681; x=1771497481; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7E6S3bjat2cxjUHSftIQdUL7rqVbAfh3aOYtI8Y17Ec=;
        b=hd5sJTIsxO49OlJSH3YkIaz/sGlcWKGGd2jYJP5uTLUXdBoCqhO5KbBBidrRgTfnxb
         KpqPWGl9bjiO+bJcigt2jpfPj/Uhd33WA3mGsZKTtf/VVh8m7fYH3p3qi06KBg/qfxKN
         U8N8aN+90m9HwrRXabIchB9Pj4Gn5mKPZktyw0PUMs5W224SpbsPj1GvgHxnViZaQtIF
         w2xRusA0+QLuDcn1Ja0yGH9Fugpghb1dwqkoIB1fXW/1hnmED8MPv3oNRqBwy4vC2u6H
         0l6CABRzXChVq0pm/1FdqNO6fN/UYUKpmiWHkEssHUUxN+OVRbBoQ9tOf8H1IJil3z8K
         vEfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770892681; x=1771497481;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7E6S3bjat2cxjUHSftIQdUL7rqVbAfh3aOYtI8Y17Ec=;
        b=EsLJvtidGIk7FqWW/k1z+EHpJdpW7WEcDNBStFRMU2EXwDlQJxbRbHcgUr/CDJe07b
         /N9N3384uTcyQ/msl+WRF5OeBs4WqitqFqL7ACU6x5uIpvqMrkjpH8Vew0sZsYBrgUim
         JNAey/DHwiO+Qy2Ef8rO73amY3KhbuJaM6r9QUims44V34I2e6rR6WzfEZJ00IX4qMNe
         0UffbH436+AiuLUJ1pRBOUbe9lChdq3lbe94qlhEaU2pQkHsnP38pJKe2KODaWHpp9kU
         Q9eQGEzHemIaNnLeOHjfiXg2Z/mnEjuoAtbrVQ2NaAgFg3EXXn4CQCiLYUgX38b59gMf
         7XBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIJnlt/wfizkG6ld4lCdw+sYVA4Bns1AdSgwqQVxXCl+FaDMcxE3tkEyd2F1OAZ60GnhF5T9UfhQmZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzcGD7R2BuLPzr/ROFsvoCtzAErZG+CSOy+FHj+U8gxd18NU9Zj
	LF4sE8Jfd2VOCz+stzKFMAyuIVINLDeeC40vMLR9xumZQtvqQSagzsGCULoCjgHCyHzInAEYTBA
	a0PeI0mtZGZRKsJJwWw0MVrJdbq09jb5cUDCZfJMYH8LtcTSRFs0SCdUQ8JwFGM2r
X-Gm-Gg: AZuq6aLU2OYX515p/ZCoRTa+ZBGbhHeXFINQMz9Z5tCE2lvfJVQkn0Iwy4Shrc+zklp
	QKnE5zY6bmiBEwaD8hjsLgLFiKSx9LU1f+/wI49loj7gH45bGDtA+T8mpNmOUCffxZFERk9Pu/4
	bGR1SSOtzxkygcmAFKu7ezoUrjONVDmO+SJl1D5Ar8Fv0OigN4V+DjNpNczZLbYf/adimG9MEH7
	P89cHtqQrJhzhfmfXzFkW2ovpEnu/OAIK1czpBN5sZNd/LwGoxJIuvqEVeWXTAn21HaFbZhzscQ
	9ur5xCrwHqgtOO2sdP/mkUBVqqYo6VgqNRJ5ZrLiv6QCPwiwkEctFUB7g9wutPZqezqOFrpIKkt
	GW5ZXeW//aY0iTUjWhuAtbLxEAGRI5G+XzwthxvSJJuB5dqSkcDW3HsgmrvQIsQJ/Q0cXPBzKzK
	x/qpU=
X-Received: by 2002:a05:620a:45a2:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb3311bdc8mr190987085a.7.1770892681167;
        Thu, 12 Feb 2026 02:38:01 -0800 (PST)
X-Received: by 2002:a05:620a:45a2:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cb3311bdc8mr190985685a.7.1770892680703;
        Thu, 12 Feb 2026 02:38:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65a3cf38c5dsm1643228a12.22.2026.02.12.02.37.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Feb 2026 02:38:00 -0800 (PST)
Message-ID: <e7d77381-4e03-47d8-8583-3724f50291dd@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 11:37:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: talos: Add clocks for QoS
 configuration
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
References: <20260211091112.3285626-1-odelu.kukatla@oss.qualcomm.com>
 <20260211091112.3285626-4-odelu.kukatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211091112.3285626-4-odelu.kukatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CqzEE0gdMnaw859kO8JqzEhMymz4azvq
X-Authority-Analysis: v=2.4 cv=OrBCCi/t c=1 sm=1 tr=0 ts=698dad89 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=QD8XKuxi8VSVazGx0XQA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: CqzEE0gdMnaw859kO8JqzEhMymz4azvq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA3OSBTYWx0ZWRfX3EYBPiJzspWh
 qTL8MAoiOsVpFdAaah2j1V9g9BA1vs9b6w+5WN2Eb21oVY85G1oihWzah2UGiDV+/QRwcLVCXDI
 0LSN0uZ1lKUHIQ0Pw5tLgaINIJLGcCc/E+aYBO8ZWBrDlmcBn1L/Ie7yM3HGXz3vtXBvTMPFJ8+
 pDSASaLgFWWZ300NwqBb48EqCNmqsJW00AT7aamxjNnMspf8C0W6gaPbDC0qEg6P8KybKe72cMO
 8Yl7HiOWGMflq54yY3UkBE1Pq/QStwcrROOVorHQsMyCBYuJmfuRE841ZMUPB0PSnfiCaRXMMlI
 BMUddVcr0hgUte7TQCgJW1w2J4PUwVW1BaSIIlrRA6dtXG6PjJ1RpV65AuaPXARpCI3nrQWi2ae
 2GkblH5ejL+zRCF9I1y2eM3ucjrxR1lL+FCm1Xu9ovfgO2UFjQt1j6CYc+yI7O0RJ6ncvJJQJtc
 XPFl3SHdcvdmLzECssw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_03,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 suspectscore=0 spamscore=0 impostorscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265011-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D155912C933
X-Rspamd-Action: no action

On 2/11/26 10:11 AM, Odelu Kukatla wrote:
> Add clocks which need to be enabled for configuring QoS on
> talos SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

