Return-Path: <devicetree+bounces-317089-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JoOgAAKAQmqu8gkAu9opvQ
	(envelope-from <devicetree+bounces-317089-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:24:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA2D6DBFDB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:24:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=dqx9fx2P;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=OWazOWel;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317089-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317089-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36452303E179
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 14:21:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD3940E8E1;
	Mon, 29 Jun 2026 14:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50EFB377EB2
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 14:20:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782742819; cv=none; b=hVP3DV3tkY7p6+yHVtB6GmfCGMqOVRp7tMEK452ZfBmepEXpwrhLxSuCiC0BAlNOlGGmJ7P4Txf9nJW3UOtGb2lYf/+ouRuuhXYBT/Np3kSZ/47M/Idt61d9qRjLasMarScBZwvGe4ScUojNqwiOXCOttvaWMSoCIVjGqH8Uwaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782742819; c=relaxed/simple;
	bh=MQh+JXfosgRnp2N26Os6WR38uYswed1Wst4QmxMK5Tg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E7dPQmIxf+OtFCDA6rnsan3juLXsBob5ykORdShVgxAWd3OBFw2azajns7dNNZVwePk0MzDwpEUW646CQxULe3jxyemOA/V9Ko6ABC2VgMfKGXY6RkKjPdXxjEt/VsLf56UdqgkfgkhcWY/+Wiu/wRJGC0wRD/Z/N7NLa3kT680=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dqx9fx2P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OWazOWel; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TATSA32592837
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 14:20:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YcbBWRwgvOfDz0077NvOLOZL5oIr0SL2V9Tnm8G3NhU=; b=dqx9fx2PQAOvAON0
	JjBJ0NIs00NhAoOl8X0upWn5qL9M/6W0Aut5eOYg7/7UnqkfTH5vlFcDiaK359hZ
	pkdSCZmp13RYcD2hsYQUYJAtAEFSkgTbAp7hPCq/iA/QMXnevPZRsDsgm9Fa3tzk
	z4PZ0aNKLdsTh7y/i9hJqPwexJ5FatfArLMbpQS/UxT99O+70cfYn9xzZjvLrMlQ
	Mobo7u7Z2maSQiFxf1KjNxMaNbG5wWBGQhG4LM9tKDptMvIIiUE1yE5KYnbX7oMm
	CDpOW9re3f+U3M4sAgmRvRmcPsJTuvLts7NAsUm+DPxpzwL6+Aujf679t9Be8Y4b
	tvcgxA==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3k7vj297-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 14:20:17 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-7386e55c63cso40956137.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 07:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782742816; x=1783347616; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YcbBWRwgvOfDz0077NvOLOZL5oIr0SL2V9Tnm8G3NhU=;
        b=OWazOWel51Lr3hRqkmSkwOXCoZFiP5Ve8KerRx61eGk3cUjA+iG3e4HA+g7n1mh/su
         PMwe4atjeQXnzOcwNoEj+WNsdMg63AjWs91oHI7j2rC8gtVwx9Rh5JfQ7hBYjHIyJUAE
         SXjeUpdIIkUUCzMlJNU+CC/lH4kk5nxKKXeRtQwusd4OLfwj/lZuAKIApkMzXXLBEZx7
         0uzXZW/47lQtvABUBcBEDcSu/44un/exVhFDFAOvgHGAoS1vxXCW0vLQYR3Net5S/uB7
         tYL8i26L04e84yej9ncPvECV9be35o75QxYbRL5QXNtEvvg6EUgZtC/NtuRNFW7SOkHP
         mFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782742816; x=1783347616;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YcbBWRwgvOfDz0077NvOLOZL5oIr0SL2V9Tnm8G3NhU=;
        b=NJjvUa+/rKhS81WMvjrBQyVjHnUnXDoSTlHEaVMWcncH8CY4gyOgpBXdkzAzBU2IPD
         lPn2arETrTk/ePofAUM73cbyKBg0VqcPnljBO9CRN+p5wZHq3s7eqWTmkI9ZhGA44nSH
         dqrnWsoJWTfFdldpERh16rUaoPtohkag8gL5xlrY9Er5gWRCh4dp6rOH1mgmlb/Re1Av
         pBFPYrJN9PI863teD++9pXL5E8eezZqkIO983R+5aiL8yl3D5J6yMyvBbFoCkWjYHD0P
         MdODYO9qLEjihuT/c2ANkdAxnrarm2tc/DKG1GcJI8WXjG23zhFTnTMByDk5rdZbDO8g
         BLUw==
X-Forwarded-Encrypted: i=1; AHgh+RpEwCOs92b7CRuV/dsHQyQQ3sCxQdoM1sWr3qBy0spo/dt5thifrJBUeai1vaBo8ObOMtiwreZ8hq0J@vger.kernel.org
X-Gm-Message-State: AOJu0YyhiGqIHo8T8ApBKHmlWMHejtJMnlhEGhXI7+gvFUSNH+3Py/9H
	H7WmgdnNkGOQVpdh+ZR+B7Vp+s0YKa+d+vLC/n5nykvEbNhoz/HQYZvIPvPYWBI5DtlguFQ+Lwr
	k1BIi48xnavYKBUxJv1aJ+90J0gF+8ZsCzdCEGh8qiB1/WZzzGv4Lj7gX3bD+sJtJ
X-Gm-Gg: AfdE7ck/lU21ZSNhkx5m64QtLXFkTYOo4rIoIwhAAZhbZ/7gubmh5pT9SQUG/3Hm9xH
	wM9z5kBclsOTAvGZpCKqB6RqC89DH57PUZpdBbIkH2JAnjJ0407xWDbPPUH73f4oRqmjoBrUgNs
	GQy4EkRHK8hhSSuSXqHmvWaVyKn/nmxhOmTpm1U/n9GAhx+t+Cphdf3w72NBgL5OM9gN3RASL7q
	ERMdN3FiXPN+P9NU6RuanY/tZkMhVOv6eot6exjMAS1o2I6JKbs5yCY9Q/qNswyHkxZO9hh64Oa
	fw7dSp+dx0TxuDgjMI6pBbm2PtV7bLZIi/jQu5+VFrV5ZkDHCZar0TdWoZTDJ4ef95G967Xmbg7
	gcPqCoYgxoNhU82wtZPEn20spCiYybS/X2LI=
X-Received: by 2002:a05:6102:4423:b0:739:de1e:6c28 with SMTP id ada2fe7eead31-739de1e81fcmr222975137.0.1782742816499;
        Mon, 29 Jun 2026 07:20:16 -0700 (PDT)
X-Received: by 2002:a05:6102:4423:b0:739:de1e:6c28 with SMTP id ada2fe7eead31-739de1e81fcmr222966137.0.1782742815983;
        Mon, 29 Jun 2026 07:20:15 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69847322ef9sm3615315a12.5.2026.06.29.07.20.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 07:20:14 -0700 (PDT)
Message-ID: <17b655b0-708a-491a-8a7a-93ebdbf1770c@oss.qualcomm.com>
Date: Mon, 29 Jun 2026 16:20:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: shikra: Add MDSP carveout memory
 and update APM DAIs memory regions
To: Ajay Kumar Nandam <ajay.nandam@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260618113509.2025881-1-ajay.nandam@oss.qualcomm.com>
 <20260618113509.2025881-3-ajay.nandam@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260618113509.2025881-3-ajay.nandam@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: H1c59SbD4e1HfdmX3QAcuojosL9bLjs_
X-Authority-Analysis: v=2.4 cv=CqCPtH4D c=1 sm=1 tr=0 ts=6a427f21 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=02jZw4jujDeG9Hx5Bn4A:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=ODZdjJIeia2B_SHc_B0f:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDExOSBTYWx0ZWRfXztPqcBdjrAHG
 KXJrfCtIySoXMFr9aOHsBjBuR+adIB3vq5E5d5erksCJff6FGlKwUoQ6qfax6fROHcJQ76IVqoH
 MTjuIR6gC1291uIIv7cGQEDNNYJkgZo=
X-Proofpoint-ORIG-GUID: H1c59SbD4e1HfdmX3QAcuojosL9bLjs_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDExOSBTYWx0ZWRfX+eouIxnsBZUN
 CyMIBVackETCRRl1i6b6NwC+bjLPy4XfvsZowPmL0o+CegkLIn6Nx3ervpLNmaH3GgX50YiONYB
 gNw897vRrKncG4xj7Jpq2FRZ0+TD7ZJx4BnqCTloBzTss/ZwglxXtvaP6AJU1DMXSvT9TlXbRcf
 tWZYWHJ7AD+u7dAun5xnGcuWnkekA3Cy/3+stsR8QDG8d6p/K3j2Y4eLJYQ/jvl1+Z2R40wBnXs
 Wy+sJ4qpDxJ+j3zMcjmfMIAlMUT/ZDv7tR5lVfyI5xpBuzIqMXdlEq8Q2+pTPU3bDSAB5KQxCkM
 agwO/EgONUOJc+9qwfC2h2gXXC8tPB9qlsEOmVufC6q0XXYc5+q5Msu4RaImhw6BwobtMLwyLcI
 ZBXRJgzbwujpR1KxxXyRQRkFCuzCFcq+z299xynvexku5oxDD30Z+cHxLAEcCi7Hi3MnvOCVIOZ
 K1Thy0ujpATr1TIZsXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_03,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290119
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-317089-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	FORGED_RECIPIENTS(0.00)[m:ajay.nandam@oss.qualcomm.com,m:srini@kernel.org,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-sound@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8AA2D6DBFDB

On 6/18/26 1:35 PM, Ajay Kumar Nandam wrote:
> Add a dedicated MDSP carveout memory region for audio usecases on
> Shikra and mark both existing audio heap and MDSP carveout regions
> as shared DMA pools.
> 
> Update the Q6 APM DAI node to reference multiple memory regions,
> where index 0 is used for control path buffers and index 1 is used
> for MDSP data path buffers. This separation ensures proper memory
> allocation and access for APM communication between APSS and MDSP.
> 
> Also add shared-dma-pool compatibility to the existing audio heap
> region to align with upstream DMA pool usage.
> 
> Signed-off-by: Ajay Kumar Nandam <ajay.nandam@oss.qualcomm.com>
> ---

So, would audio not work with the base of this patch but without
this one?

Konrad

