Return-Path: <devicetree+bounces-270412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAISJFazpmn9SgAAu9opvQ
	(envelope-from <devicetree+bounces-270412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:09:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 932811EC684
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E96E7301BD71
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:07:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED54B39150B;
	Tue,  3 Mar 2026 10:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DFMZi/qu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TtEb7TWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6A9391503
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532461; cv=none; b=Ofu7q8Ygh8B9vAyH+BvH117wKJ5xYKLED9Dc+S0hQ0c7awHLff8Rmz6ui2MKQMD+AizqR6H2qWSLTy5FIA16qn+pPF4UyGynETQ5Wf4OCDEY/MK9ibIn9gZ8XQTgIqZ7POanR/5aKKJ9ilomtego1QUMWFNscm1DsZVqBesCdQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532461; c=relaxed/simple;
	bh=2QgGw+VLl538AxK4NH+SulIRIdtltjIFPi+D9n3D+pM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZLbaqaQVauTmI0MzoJOWdnUSkyNQeCXi123O2OkssNF5PZuEOqi7+am3CxrQjKXoEexbua7ObqcThmiDi5AftLFCV16PB7yxbXdmBPvKnOX3wcPwa6W13Ht45hQiOEdPxGLs2JEKS159b8Txkaq6sKYngQLh+OgXpBYov2sGblc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DFMZi/qu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TtEb7TWO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239n5Jq1838277
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:07:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CZGGj/Cq43q5ATiRBFYGEftySIRuSNWf8OfummFnl00=; b=DFMZi/quVv2iY5j2
	CsQ1gxfK8ODtli7gAgMSA6d7fHusooOICd3XkfdE0GtLRyF3OzKlW9eSozKfBUO4
	Yh6zLGtVWSYIhO27m3IOOeK0Q3j9rGJx8vwqjza74j7a7BApu14unY/QNnV6LmuA
	amX/d5quVf88qxQOLWVNSjBW29N/elpkcX/Sx2/oLfBL1a4b9sbnY/jR+43Py5hC
	ME/fM6NKtkHAg+xg4xi4njiacE3M3eFb+HMIt/Gov16PWzbTtrRFmHX91m/y63so
	QQIVgrnbpEH6Q+NIwG7ry1LcVJGkq7GefsI65xVswW/Go53CKWA9KUEViI3Cqe+N
	s3lX/g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnngg9rkk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:07:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c7177d4ab4so525353185a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772532459; x=1773137259; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CZGGj/Cq43q5ATiRBFYGEftySIRuSNWf8OfummFnl00=;
        b=TtEb7TWO7qdTjx6M4oUW22UQ8LAU3YaRpdggOsOfcKa2KCfyTpwlhakL3gOLCCBUHd
         HigtBtrEKpKlVbgjS7LlRI9KAe2cjzksdSqqhjPj2C9HE5zsu4focYt2EDfPThTmDXsQ
         wMz0xr59+HHrHRaWF6g6+An4FVa6qF0yeowqQH0TI5V8r7Itr+uf4hP4LH5XqjO/KzvQ
         YjAc+gNj2se0J4WqaSqEEDHwLXrHu8xRNTIPjYHRDUJo7Xm3f1UKdjn3mWiP9RJxbv3S
         LNIG27KUbmdc6v2OfzCxBgaJ6izKgU34LYndww9AsN4sVdTg3UzQMDOLddyG979LbhDz
         b6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772532459; x=1773137259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CZGGj/Cq43q5ATiRBFYGEftySIRuSNWf8OfummFnl00=;
        b=fQqWXmQqq5q+rRjZw2pgPoF8zr0vj6iWx1oTHM/ftBlDFW4AfZkq94yVr6h2agOtU+
         jBZN9g5sKXnYyYMmjnxcW1vugy2oV9fbZqJ7xN3QfutjhwO4BjQfBdfnbUcCC44GhBeY
         kwIYfc7s4bJdOnBtuWdeEP+v+r5hfaAEpIKwsP92E9syjg3otk0fZlehJ7tgnkjAIuTB
         q0OxosyNIGf6zpglT7A+L+T7u4rEG55VmtWaL8ghtaMHwy323IWThk12H13il7sDFX6P
         y7JxnMf0kQY7za7w7E4T0brjobD9g7gxdSma1EUzFbFCgaQ9BnBlJLbND6HeMqs4ThuZ
         vb3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVs474sU5gMONm6DJakpqCZGZxFWyMfwjIstPzWT1DkNjCZzRdwT329vrt2uujCU07Xm05nbnaGYt7k@vger.kernel.org
X-Gm-Message-State: AOJu0YxYqHgPogL0DRe4b6bKwoTRTHJzQ1W98d8mCTaogsk4OhBmsbwd
	kgnDTI+uJE53PktgOxnFbA0RsXZRiFoOfe1xyG88NDjGbbXr6RLkKZH0f+VbVgG5h2oyAIszLAJ
	nwyU4yx+6OrJSR7E+cEHU4ypwlCPTcDCRnbyNswCWVBRdaQdlIFPKoTMTR/KOf1Eh
X-Gm-Gg: ATEYQzy0J0yL2WK8i+VKjVXf4tMZV0bsWho4zf6Z3Q8xRV6mg8rlDq/rTmnCt1Tvs+K
	uQrcj3aWTMehUFRSpDIS0ca7PNjkwmWTE9kOimjkRnQBHSewrRFpHF4stFHLkibsOdJk3WNylHf
	4gSsH6c6jEX+Vams+5pN0aCNVJ09PQih0FsrM4pksK/FQhSoMiKTMeCmCVrIcgoJRtf4U5ox0Pp
	I6ip8PpSj4O9oQ8410H0RxFMWDJpUNfb2NgCEXtT+4R0mXa8+wvk6NKeYPiHI6cL3AXlwHFe1Rj
	5gihIZHrLoDATulgOCTKn3ktEfyEUoEg+l29Bi9L94EGf1HvRig6vNoCEERBFbKZS+39ILD8NQy
	04fq4NRODOt7DfQRZdgrtiZKtRmCitVDPM5kRHwxVhvrT1adUubqgEsoC0r9sRLJViZRtUSnBhC
	gxDKw=
X-Received: by 2002:a05:620a:7007:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cbc8ee5ac8mr1679032785a.5.1772532459065;
        Tue, 03 Mar 2026 02:07:39 -0800 (PST)
X-Received: by 2002:a05:620a:7007:b0:8cb:3fa7:c4f0 with SMTP id af79cd13be357-8cbc8ee5ac8mr1679030485a.5.1772532458530;
        Tue, 03 Mar 2026 02:07:38 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9383397fcasm444054166b.60.2026.03.03.02.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 02:07:37 -0800 (PST)
Message-ID: <aef4305e-3965-4f55-8eb5-3bbabd63bd18@oss.qualcomm.com>
Date: Tue, 3 Mar 2026 11:07:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/7] soc: qcom: pd-mapper: Convert to
 of_machine_get_match()
To: Geert Uytterhoeven <geert+renesas@glider.be>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>
Cc: "Rafael J . Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>, Ilia Lin <ilia.lin@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <cover.1772468323.git.geert+renesas@glider.be>
 <0d23a449e62ac85f04ff07bc2758efbaa709c9d1.1772468323.git.geert+renesas@glider.be>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0d23a449e62ac85f04ff07bc2758efbaa709c9d1.1772468323.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P7E3RyAu c=1 sm=1 tr=0 ts=69a6b2ec cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=O2ICF3MwSKB_Mz4s5DoA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: wiMMf9KmsPiRVHFOG7_dYv_Y7EYOR_2X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3NiBTYWx0ZWRfX8ikF0QKeRaiJ
 M0p/dIwiCK/ILZEIz5mIPZN7GxFtaRCr87WzB0yUo1I7Mln11uWEjg8EYtnrsPWI9UyuFv7twT/
 hSFnQaxtqMeTlUSQnyH6fy+OGDeCjvh5lQOVZCiZkw1UdckJZi6LfjWX0LBIATyJ7b2h0d3W/lg
 KKNpH8ty8sqau0ryKCeZjKO+0S7CdaOojHy1L03C9rNbNH31ZIgNhDf0k5jlRQ0k+cuKny4TiKO
 z1IQla6eJYErIw9dMUbvybJsqlC/yeHXfCDwPtdIv91WHi0bRH9y0u2nzSwoTX8lLHo1lhuw88f
 My3V6aeo2U6FopBrsR58b9p52AmFL+Nnn1CDYzXJ03s2Nz+xfSTKCEv/sUWA5/i4af24qrSyWC0
 MVjiGhdTim0ftNka9AH6Yz5nSNtDgJ9Bra4i0aDcEkNaEVwdQk6lYGTagViiVX8GjC+9VXuZpLd
 OiHVFU+xDXYzkDhqFcA==
X-Proofpoint-ORIG-GUID: wiMMf9KmsPiRVHFOG7_dYv_Y7EYOR_2X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 lowpriorityscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030076
X-Rspamd-Queue-Id: 932811EC684
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-270412-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,glider.be:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/2/26 5:29 PM, Geert Uytterhoeven wrote:
> Use the of_machine_get_match() helper instead of open-coding the same
> operation.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> Compile-tested only.
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

