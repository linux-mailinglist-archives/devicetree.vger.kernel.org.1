Return-Path: <devicetree+bounces-274123-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFecBUhxsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274123-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:42:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E48264BBA
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:42:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5AF3B3067582
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC9231F9A9;
	Wed, 11 Mar 2026 13:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bK+PGpr/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bi3a7QBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18C30E835
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236199; cv=none; b=dp+6gugqEXCOtTc02JyLHEIFtO9kPtXPrR0ayT/6aIoTYcFpUs6ssy3WiAvUwLnvGdU0FDwS3I6y6Mh/rZpy6Z5K/zjZq2C5tPtRoUEYQsrW1ZyLKiqr3oYurIqXctPMvxxFPG5g3NdrTu2in7jn8tRmGnNpyzsoLNmPp71HQmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236199; c=relaxed/simple;
	bh=IL5+CLEp0JTXBwWQDuoOZRJTYGpyVj8TwdziVEK6VzE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k7oKBJELxKVaqJsg9Zm+S5s/BEN+E/c1tJ6YdQ6iuPWNgLD8kr/qte1lDxr8pn8rJrnAQxLnrVF5wh8amsAZ4OQPCkhgbEtmBvb4g1q8/q3ORdu9B0co7W0tFcP4s05NKGJbzwjLLzSzrwbs3FMsVcOBL/kQcqHVFXDe0V2wzaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bK+PGpr/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bi3a7QBW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BCJMek2140298
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KGqJp1HesjofSgFAEM+eYixHKEeYxMvdRZNezmTz1AY=; b=bK+PGpr/DQYgNlH/
	uTlQyduliYkNNp558wd0ZgwtaxSUByGiX+R+uGwV7yQB2mP2MgatumCUtj7dHdBw
	Pwn5A8/EI/5o/H0DK3+ZtpW5W+J5UljzxX62aWsV75yhNX3Ma7ATw74wz5BRnzo3
	frcv9kDkWIJWDJUlvvUPHR9YC9gF6QOivZ1OiyvtiBDoZGr3YPnmpz+y55WFEiHt
	rDmikLTbclnm+44WhNGYXoSTi5x6JA4qNVi2pYC5ZQ4I3WENAVqLCrr0bhBp4lzu
	EI7xGBij09WXnUEK73joatb7DbjC97blqyK8a0EF/POuMU9vfYfmSScRAPy15Umf
	XI2OYQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctqgkbsh8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:36:36 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899ebdd0b08so69737176d6.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:36:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773236196; x=1773840996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KGqJp1HesjofSgFAEM+eYixHKEeYxMvdRZNezmTz1AY=;
        b=bi3a7QBW/fh4IY1CAHsc+MTtGtSTd98Zn4SqJuO4FCjnkea7LYdGCsDpAileK3GV1X
         764o8YAxiVSVQkl4DhYp/BMioks3+rLCOfIQlQqwYMHLIwILnMbiqQCWyHP/4uUIOIeF
         KyLMegLQCCiQQfzcmiChO3KNShrP0KK04Dvpwd42wknnOx2pjS9NPJ+QAjOiLTNskZBy
         ZbImGcwU/1M4N+ATADALMgt1cJT+LqdY20Vx8T0+50qGg/uu3uhBEUvc2FRiujWb3yEd
         aO1SQfIVsOhwNu1VaqMrjTRIDJmmOFa8BOHyN2CGV6odJP8/fNFbv1BIhpxJWQcJAHKu
         Ggcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236196; x=1773840996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KGqJp1HesjofSgFAEM+eYixHKEeYxMvdRZNezmTz1AY=;
        b=Op46TPgt3GfMAGJ4xpEcGV3Z22QRvyg+xUM6zw8TbZoF3QAqfa/QPgPeBrzfmh7V0W
         6lMwNio5kLkLkIS5GmjI2VAl3njBZDtfCVMAwgMCOLSuoMiR4jPQdHoB72oiaGxtyBuC
         aGvJdmgAYf9fKyefbM3smvv/hob1TmEISe0gq8NR9KOQ3H+JMdCaL4/574flKhL+98xC
         YOOSwMrNs0NI7dOehQdA1O+LZyrlpYQWnDE6goB8oYTfWD3UAZWXdpurpot5vA9jxdZF
         T2k4qkjxEP6CWS3B0xcCoAJnCigMNVLW+jMCyWfiHR97Le8ipXOa6A4iYwkkZfc7WcU0
         F8Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWZf9EsnCJbVSZX346zpeMkfIEFonjjNyKHjKz6sgAyWlMFHlL1/4FkkTbvuSkoCpHTVj9yb86Sg5Qd@vger.kernel.org
X-Gm-Message-State: AOJu0YzgyjuzfJT6N+/NOp1pzkfPwLB2UJiYSQXLShactH3/RzvPrTdj
	h/AsjYic1BUbfg6fL+WHP7XDpjrN9mawtPhki7F9DGc+oZENqnQ0Xno6/Hsr5UdNPL82F5lXMPY
	O8IhFGU/qcvD5nuz3s7JjpqLULuVCpNsBFm1rcnewYxFkHJ69H/FnSv5s4fmqnrjQ
X-Gm-Gg: ATEYQzw1VGFSleUp0QNrbcLZbyT0WB17hcpXmKSvEodsV3yFOBhGeK4BJ3qxQDJr1Dm
	3GmrtPac3vyvH4DtpxuV9on8gnmkb5X4AOFLC+getwlKVnxjOaMyaIFahE7OEagjlAD+m+oHBoT
	3SJY+0plLGWHnuSj5hduPt+/idH0WFST0npVVuGjkpo1J/IzSy8pYnuEs7W3TTdVRJFTV4J+Em9
	5KilXoRq4nMT3dXPjxAMVqB10oKW6K8mbzOKy9GnaLYSDhpFLFyWtXVZ2q3pWS7ML1L1Bk54g5i
	aJgF5FgI3Ese9oM0YPbgx2FKlswD0Z/7RgeUqsOi9AbCrGIg6QQ3OruGodpIuZEBJT05jMyO9M0
	WD9ErREPds4wejAdSWUpvm3ZCSPW32lvs1uiQqN8bQAXKoTQET4VcXHDtq9hV7mt/n5U6ynDKwQ
	pB3GY=
X-Received: by 2002:a05:620a:1720:b0:8cd:7fac:a2a6 with SMTP id af79cd13be357-8cda1865d9dmr251601285a.0.1773236196484;
        Wed, 11 Mar 2026 06:36:36 -0700 (PDT)
X-Received: by 2002:a05:620a:1720:b0:8cd:7fac:a2a6 with SMTP id af79cd13be357-8cda1865d9dmr251597285a.0.1773236195987;
        Wed, 11 Mar 2026 06:36:35 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b972de092dcsm56411066b.4.2026.03.11.06.36.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:36:34 -0700 (PDT)
Message-ID: <4e98781d-9382-41f9-98b2-2c5a25c1bf06@oss.qualcomm.com>
Date: Wed, 11 Mar 2026 14:36:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 13/13] i2c: qcom-geni: Enable I2C on SA8255p Qualcomm
 platforms
To: Praveen Talari <praveen.talari@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, aniket.randive@oss.qualcomm.com,
        chandana.chiluveru@oss.qualcomm.com, jyothi.seerapu@oss.qualcomm.com,
        chiluka.harish@oss.qualcomm.com
References: <20260227061544.1785978-1-praveen.talari@oss.qualcomm.com>
 <20260227061544.1785978-14-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260227061544.1785978-14-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ku3MV-bO4bD3QV835R1bmQh00S2yDgVr
X-Proofpoint-ORIG-GUID: ku3MV-bO4bD3QV835R1bmQh00S2yDgVr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExNCBTYWx0ZWRfXza+Le43/b5kI
 b5IT7sQTPPv4MevJmDHVPCwYxAUHyJ7nxDJEjNstzHqJTvK5N/3igUtbjkzH3YEHJOzM39oQXb3
 NTZWjrDBygLHOHvnm0LdktMDIieGE+ulQStrJKArb1pFwT58OhsADlVDm1+q0lTyyxnMw4YqfZN
 M91JBh5rin2odEVWkDPo1KVFpOgDfoAe60ePuSAx8xJ9//A5rNTNy+6lC+bcbuZs4uOLtbRCpdq
 Dt9U0eRZJpiA8Mm3SSk1QzB0iivSbpzFGwEeKPNkvnRVYowtVKEBF6wsoJpzY9ZeFmg9JfjfZsa
 NbQQ1WupTby5MO0yhgmpMeMwEl01m9k/CQkBxmY5hx5lX/eVCo2b0Zkis1G3W6nGvspC9nDBmC2
 56GqCtvCq+ye6LQRrdNL+iro8gOdhfd83D4Eq9ELE3pk7Smpd5CFLpPKKvKuhHr+N4tFdOofXBA
 F33aOc4y6fQN6UoWXhg==
X-Authority-Analysis: v=2.4 cv=M4JA6iws c=1 sm=1 tr=0 ts=69b16fe5 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=wYGpMCW26V-xmeov4-8A:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603110114
X-Rspamd-Queue-Id: 80E48264BBA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-274123-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 2/27/26 7:15 AM, Praveen Talari wrote:
> The Qualcomm automotive SA8255p SoC relies on firmware to configure
> platform resources, including clocks, interconnects and TLMM.
> The driver requests resources operations over SCMI using power
> and performance protocols.
> 
> The SCMI power protocol enables or disables resources like clocks,
> interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
> such as resume/suspend, to control power on/off.
> 
> The SCMI performance protocol manages I2C frequency, with each
> frequency rate represented by a performance level. The driver uses
> geni_se_set_perf_opp() API to request the desired frequency rate..
> 
> As part of geni_se_set_perf_opp(), the OPP for the requested frequency
> is obtained using dev_pm_opp_find_freq_floor() and the performance
> level is set using dev_pm_opp_set_opp().
> 
> Acked-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

