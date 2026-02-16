Return-Path: <devicetree+bounces-265726-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFVQJm4Tk2nD1QEAu9opvQ
	(envelope-from <devicetree+bounces-265726-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:54:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3BA143768
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:54:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 498F8300889A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 12:54:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A692C08C4;
	Mon, 16 Feb 2026 12:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DQBgG6i0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YSt7exKK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECE317A2F6
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771246445; cv=none; b=Vg1is0G9/zm9o/FdGjMSF0YI5ta+PvlZ2QIfA0ODneXD1MZBBfDewinL2MvjFv0449XmJb1qsdmeAQGGChJIlNJ3S/DS8/6OfdaLrJrI7OeYJYh5+VZZZ+hMtFgK3lOlhkerBPWHltNALKav08t3kcsheRIpnuyPZCTA1OV0alk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771246445; c=relaxed/simple;
	bh=rIEiMmJGKtDGNHZ9N2gOgPoqyXupIVbIxMUp5L9UweA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GnQSuhlqSovCfoBTZ9cJYEjsqCktb65JXA9BiCcqlJb5uZB+Yq4X46T0pOuvljm4iiRYPzRuj0uv9gU+FqmmNjxHc9NIRreF8S7jlWx2Mms7ppe0RP+y05OwyHbon4FqsLF0y8SWscyGUgq6f661KelYLWJ9BuQlx/yywE4t2Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DQBgG6i0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YSt7exKK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61G8uBDe2536432
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:54:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yMNR8hEnujSifAH2GF4aIm8O1bdh7oP2lvHQiXEDssk=; b=DQBgG6i0B8599gMr
	2FTU1RroYcm6Nqq94daFq22LkwuGTRprVy+a66U1R1cBU8IU2ApsISYJrQsTnrBp
	ZYosvlp3aT+QGeYhmPzpd4YshpMHNzn7XJhdEqcV9xGmCBZfK17ORDk1KIJ0yXVk
	nmoyQyDaiVnLbQ7RZzD0qaXdiRZGJeu1jptFbbMCvR0kRo9LxxoWxY59EoLOgb58
	BbeEWAAryKO4MWjarOvyTlvT94PBLCtBAcRD2TaS5h41o5pH0D9Muu+stWLuHDvJ
	LeHGXgzlYxRPoNV0v09TsZ/EbbcbTVkwt5qRjWiQvF4/2q3rSqH9TX3K6cHtEtw6
	J5KiCQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24cm1q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 12:54:01 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c7177d4ab4so214403885a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 04:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771246441; x=1771851241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yMNR8hEnujSifAH2GF4aIm8O1bdh7oP2lvHQiXEDssk=;
        b=YSt7exKKniuml7zo85qIjYJ7KYqEbGPO/8Q1e7vJnuSSPEnXygKgL/a1qBTe440Ndp
         /PaoasMtQdFSOcGAph/2gY+H26pYcqAK0inw53/gruzsA3s6OlSACGKfGyQ90X/0Q9tP
         pAtJF0zJqdvTBrgzRzuNnntKqDs0Wp6fMygH3Vnn/iboP56613AagpI/OOd558mKAY8H
         p2ufjS0g3bh4ay/bNakCINNAmSDXWQfZEWeWIgdgtz/NrBxzrZ8fOMl9tdGUrn7QgMsM
         QOt/HdofKWikBWlZg6oiG2rlwk/1WYI0edr94CTLUjZ9ES5cKlIqVsLL+0ovIT4YcyIb
         Betw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771246441; x=1771851241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yMNR8hEnujSifAH2GF4aIm8O1bdh7oP2lvHQiXEDssk=;
        b=uycZaGBDmkGDrAq0ohvNmwZ5zX6U60YQFy+fgDOwM+MvBY89wL+/bnfRuByH22MySa
         1A9m2oC3EsvW3T+UEbVLisMypTbayJmIN88bD+/uPSKqfW7j/WG8hNkruAmyny7Y7tQJ
         4+NnrfSKB90Jag8HlyfWFV+UaMFr6DtVdFW1mgozHYhWUk/KaMtP5zfZFNy1pIfbM8XP
         uQfYm/hdLQdZv5kfA+v+ZD4ekGs4Is/HCmbG7pRXjSqk4FwIAXgCTW3h3YyMz8bvjkM1
         wxiHA+o/o85e5Qa3sIl1yWJUEHgN/4yZN17/H0p2NlBO0mib8xTL16DnwomuJJ8s+wcY
         oEyw==
X-Forwarded-Encrypted: i=1; AJvYcCUVCJzUowb8l29hXw2iYY3+/mndlEQuZgvGRS66epBAKtatsoi5IiLsFGPOelfx/mS2h2tG1uIJUTOW@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg2saUrcSuur8HpMpbaCPBMlADbhZKYAFaeievQl8HyZbd7Orh
	F4tXcguZzbcsnWiUHV2XtPdDGdZrQD8TZH52OPVVeOD2M9E0lKu+M5WR0vmlx9W6vPuFX2WX5dN
	t9Hq13LGP7014J6PQHbTpgwkFZjHb84TF6xLBp7opJiLj0Dm1N0CMWh5OkHOGMmJH
X-Gm-Gg: AZuq6aI86fou3hZKt2G/FdFxlWamQDovYBaLRhrBBzU281mMXKXgLLrUJz4PuyX+b74
	8kZIjYV7FeyLoXzJo3BRMQqb6dUVXJZv63S7bYCiGezwO0TuHJLD/qAWMeU/ZzevVl5A33VGj5p
	Dx7OGfNGAoeNnzVfIUs1WFf5h0AZ2MY/EagNOcShCQpxBFRqqwwL3wKymNIJ1Oe8OZMQXP80Drj
	XFO5RcR4wdXDqVmgCE0JRBcJ4xZs7m42Truv+k6R0zj7hl5rtje0vAs0jg1GF07I6zk5zupBAtb
	uziaNSVv+U7CwZG1lKC+DEzchM1ClPHA+EPyvE5kEjbz8jN5DeC/ar1Bpvx5C4AhREGJX4+IniJ
	ILkwo5qsmtghEqD6mJxabkCxzerzvuwF8QhQJ0jopZebriA3Duh59V2EK0UsjGYnmS0Ap39laAH
	58BC4=
X-Received: by 2002:a05:620a:2905:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb408caf28mr1039578785a.6.1771246440945;
        Mon, 16 Feb 2026 04:54:00 -0800 (PST)
X-Received: by 2002:a05:620a:2905:b0:8c5:33bf:524c with SMTP id af79cd13be357-8cb408caf28mr1039576485a.6.1771246440551;
        Mon, 16 Feb 2026 04:54:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7627fa7sm256229166b.38.2026.02.16.04.53.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 04:53:59 -0800 (PST)
Message-ID: <ac78f12a-b10d-46e4-97b2-57d826ebd893@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:53:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1] arm64: dts: qcom: hamoa-iot-evk: Add SDC2 node for
 hamoa iot evk board
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260211093045.2595126-1-sarthak.garg@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SU_cIzFAqjcHGiozhBlnowR7KGmnydPi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEwOSBTYWx0ZWRfX0cZQtJDpD5Jy
 L8KFnJ1VSis6eainDHC0JEpaOOvWg8JQ4eUIOpwHk7rCfXjVB4/ZW/sEe/gJhUwfWDUdyn8ZkRS
 iTYys1x1kUXH2jqBP9EOdfXfKe1lzLvboh87zKZjT1wVL9flBLk2Sxme7g0PS3kk9ZatJdmxam7
 ZIgAs/NLDBX7LKOoBd5yu+onrO8uQ8hj2XqBd/0KHZuC6XmdwQhwJtzQ/81F2iz5Qj4jnHA2FyY
 klGaBNI16vk/jKfqNJbKOPAjBM+z8H4PmTTE31f8gJEiVXYtHUNptkbNOye1cgqBSLxQPp0EBPX
 bjPlyEgTp7y7F3HORl/oxW1sMenKiXdCUG9D1DpuK+fajaF0ELm9QR3Z298NCR7OMyb9f+kXdmn
 CmGsZEUBx1Kf9CatvGvtRjv9c5tiVFr2hqbspXjqccXFfFaFmPMuDp4GLEOsh1Je3yPp45IRIyE
 XJ/DyuuYvUHKsrFCvCA==
X-Proofpoint-ORIG-GUID: SU_cIzFAqjcHGiozhBlnowR7KGmnydPi
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=69931369 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=DTfhBfxf_OAATmIgOtUA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160109
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265726-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C3BA143768
X-Rspamd-Action: no action

On 2/11/26 10:30 AM, Sarthak Garg wrote:
> Enable SD Card host controller for hamoa iot evk board.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
> ---

nit: omit "V1" for the v1 in the subject

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

