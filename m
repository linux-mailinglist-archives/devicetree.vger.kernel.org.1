Return-Path: <devicetree+bounces-266972-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFk1MshumGkoIgMAu9opvQ
	(envelope-from <devicetree+bounces-266972-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:25:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C348168505
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:25:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA0573015C84
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 14:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3374934CFC7;
	Fri, 20 Feb 2026 14:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mIAT/F7T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LgNx5lN9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B4435979
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771597510; cv=none; b=XAWUfyC/6wdA7AKHuDhnbv4MlrYxSFM3PSpt6hGcNUW5IYbrWUGW/aaVr5Oaf1bSH234DLNfcF9mXMxP7IQvyLD2Tw0qTGO9c2iSaoWs+iQj6HjzxjTLMfwPLjdd4XLTdNlKFsh2XsEsvh3Tuj7qSEIEnmV+/CimNBZmcKTkffc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771597510; c=relaxed/simple;
	bh=hAVBE0mTrRinC7whF3bg8K+fUP2K4sg3EyAlf9XUDNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tIndL2x05RKPKW7lAZw29fYQyWyXdaMMlyh4YsFvjwezOW6dFoRZMBVYTWXhf2YB8ZVKTR9riYvOAxCsG4K+pEK142mvlWQSweO/yesLuZyX2G2aFr9OQce/jrpWZZoIFwrx8thooGWNDdn+81tQGkHJukbc4TLybYzLY2PWIFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mIAT/F7T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LgNx5lN9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5Rt2B3034419
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:25:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ogJUMGuq87fvEx4oP7XhE7vNjZ1ydeJog0l7M3BV/38=; b=mIAT/F7TmJMKVGa4
	hmKPvMlB0L/WlKKdqMll3Qep2pJz8XVl/PFcCDbcJ5c90mEe5054Sk7+pVxOfEj5
	7So7dXQIUR9b9XCgErYrTRBDHiuBgvjp9Ex/q+eBOBu3qaMx+5+FSAZ56rwmSvIM
	fWCHvZGZ3ZbTMZ/ihK5NIvfSxem1yGcRFFUbRSl13WQxTawe867lOncHAj6XaFOE
	0VY3/k1fzxjNpQ2O3Bv+Y9WYj/CLEIoJkBT6/5if4+jKClOI6YeC86O6W7ol+Y9U
	Zu45+8jUwLebg2PA9FdtzWfV8oSgwur/KI3wzMPVPv2s/MTmwdS9x1EJz6FPXXcL
	eOJlDQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce6k031wv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 14:25:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-895375da74bso20180136d6.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 06:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771597507; x=1772202307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ogJUMGuq87fvEx4oP7XhE7vNjZ1ydeJog0l7M3BV/38=;
        b=LgNx5lN9R/fxcMtAPNNlyEaDk+GCceO8gSyDlJrUzK+gMIseBt9Bog7itoxA3RLfgj
         TGuSYrvfdv5nPhcJRP8TYpKu2fHsn61dElq0+GvOHISfNkHjp2cvguS5kmMbMp+r4R3g
         KRH+upKvtidUxl20dme7m4HArD9E0HIgZDsDDxA4KdfkRo7jULLfWdZxegpCn4z9Swiy
         BRiYVuSXxiLK35dpFpSvwtFUfrOYylW+bhK+icYfZgBR19faI7WPTN3njTxqpbHKTU3o
         q5ZOXm0SWbe0nOGJDaH4OLBEBcHqdnnV6Q+o2ZXWWCuaGEOKo7UfIbPF686jj8tgmSuo
         uJpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771597507; x=1772202307;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ogJUMGuq87fvEx4oP7XhE7vNjZ1ydeJog0l7M3BV/38=;
        b=CR9VFHEkQNHYGhnVNT1j0DZjxodq58HezXB6Ilw/zTkdlLHR1BGvZSnL7hXuqnjKCV
         KU4uQW6L4MWh946y+XoDBYR7i+Eb6dRo01rrbW3kOpzhCQYy4XK/q8fV3wLCpfVBEufw
         4xcEi1D5SChrc0CXNGUu/DTeqxHNhW3GplGJCHji+YBmdLkkVPPq1EiY98eGy6HW145/
         J7nBcDuL0CCmdlu/lgOK/vMbYgCJWAur1i1EE5h/twlu6QYNhqcaB3hlOnqTuYxyT8iU
         e9PT8mekg6PR/6LDS+LWACif8nPdbfJKlTLMAJsBOMiO8bRbPRz5OtCqmBHqzc+yqcNN
         Zz3w==
X-Forwarded-Encrypted: i=1; AJvYcCUCREC5F39zZ8LHL1Q1xW0hz7bNrgz+wlwTnqRM5XqKgSgF6JYVgr1N8etY+c17UQJTY2yNRvONLrJH@vger.kernel.org
X-Gm-Message-State: AOJu0YyjE0VOYfR5p2np3NlINcCBW2nZ+fRmWw7qfrvY545vR/nk0aPx
	lPJ3dFqXVCviOvepWc2QvqJj0XMWoPcLsMGzJk0mr/LkTctviiW0+btu5QXs4nUOTZUbAyyePcd
	xududCPUERuh+Fx/pkldN+lEW0DehDD9IoBVZWVWrrqMRZj9NyX/njUEJZhpndwyS
X-Gm-Gg: AZuq6aIMbH6WQrctGN0VjsKw37EohNQfRP73ZHjFBOuAYsJwvhGnsxuK5coFYX5OV70
	0HXyKoetCIqK6ZY+oslOJHhW8p32XGDM0aIE/BPXu80JRH7yQGcl1jnN9Cv4EZgc4fc1ZNSNOuT
	k8q2lkyZUPUVVFI45jLUV5FUliZEBW9/ys4DgXRdXJnbgzs3xmjN5d2+uvRVcetj6lkJoS7KTfY
	+SU/REBBk/Yd10J1uoAmdvrT5YJjzY+Fs0adjeo8m25AJVF5TbJEYlod2Kz7f59MspFjQC7aVvf
	JkDdjxXwnebd9nDfc0OSDNOKS9VNCNNVrNc571Ebm+3tNRTRDvdkw4Z79GqYwn8CrGv1ksNF4o9
	PHzuUrrUBY6fF3vHq9JrlPQQjl3iuD2ozgNmyWnjvCYZuBOIJ6KUCAOGMXDblPIgu09FPhJokI6
	3+epE=
X-Received: by 2002:a05:620a:318b:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cb40850a4bmr2498779085a.5.1771597507286;
        Fri, 20 Feb 2026 06:25:07 -0800 (PST)
X-Received: by 2002:a05:620a:318b:b0:8c6:e2a7:ad1c with SMTP id af79cd13be357-8cb40850a4bmr2498775485a.5.1771597506842;
        Fri, 20 Feb 2026 06:25:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc73f7bf7sm667056466b.29.2026.02.20.06.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 06:25:06 -0800 (PST)
Message-ID: <a39f5526-8727-4fb6-9a93-36f412b93f88@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 15:25:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sm8750: Add camera clock controller
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260220-sm8750_camcc_dt-v2-1-e4b7faf35854@oss.qualcomm.com>
 <13553877-a4d0-47ad-88ce-3d4d5b353101@oss.qualcomm.com>
 <c8e9eb0c-9c49-401d-ae4e-21dcb1e1e843@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c8e9eb0c-9c49-401d-ae4e-21dcb1e1e843@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDEyNSBTYWx0ZWRfX/Ng56QMCBMx2
 nD4osLtdWbqBo5ZFhjYDMFPxDIqj9/+fbj1nK0W+Z92xoJuEJS9fEJ6hXLbXBjt8x/qIfPGNrSp
 wcbu9hsJY0HiwMrYczrEKrJ2fcB7HrZpYeq4iLrcqKWaJ1seQRvCpsRHtFNhZzVL+Z6kO6MJO5P
 iQK+6RqD17Y8UZzZ8LCbuEEeqOLl+WXR3ob5Irl8pJLpOhhaTLIVub9rVt6ZvjlqrA0HtifYo57
 raw+7+s6zsirCZBBMKi3w2JWAk4gC5uTNFWOh3qKrESmlE/EsvvLdmDN7FcRSEop7xUU/t5JMIY
 NS6T884xcvNo6vBDvTOyUofc9YiX1tmVR/jr0os+1HiJ+dbD/L2jS087zt6bcG6X7AS7VmwMYSI
 538mUFKHAr205C/XjfMIWFK0S5/gHDmmsNOs564XfqbJv2la2ZebY592RQJSImW6rSx1BFfzSBq
 699R6HtHWnre426vzWQ==
X-Proofpoint-ORIG-GUID: OXxeKx7tIDN6UkDgXavUoxTBTM4f4cqC
X-Authority-Analysis: v=2.4 cv=K6Ev3iWI c=1 sm=1 tr=0 ts=69986ec4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=zG_g-YbQlRVR7SRETiEA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: OXxeKx7tIDN6UkDgXavUoxTBTM4f4cqC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 suspectscore=0 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602200125
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
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-266972-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2C348168505
X-Rspamd-Action: no action

On 2/20/26 3:23 PM, Taniya Das wrote:
> 
> 
> On 2/20/2026 4:25 PM, Konrad Dybcio wrote:
>> On 2/20/26 11:28 AM, Taniya Das wrote:
>>> The camera clock controller is split into cambistmclk and camcc. The
>>> cambist clock controller handles the mclks and the rest of the clocks of
>>> camera are part of the camcc clock controller.
>>> Add the camcc clock controller device node for SM8750 SoC.
>>>
>>> Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> ---
>>> Changes in v2:
>>> - Update the MxC phandle to use MX for camcc node.
>>
>> My point was that both MXC and MXA are used
>>
> 
> My bad, even I think I got confused with this. We really do not need MxA
> voting as it is always ON. We can sustain with MxC only.

Does that mean we don't even need any particular RPMH level on MxA
for this usecase, just for it to be on (which as you said it always is)?

Konrad

