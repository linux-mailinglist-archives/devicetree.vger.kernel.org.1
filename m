Return-Path: <devicetree+bounces-263897-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YM36J26iiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263897-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:01:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B70E010D4DA
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:01:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1917D300767D
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD3230B502;
	Mon,  9 Feb 2026 09:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WSOeTDXq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZUj471A4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8CA23ABA9
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 09:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627688; cv=none; b=K9tMIcfNv2rA18DB0jl0VNMDkPMnAxfr1127llL412QRaApWXYSz0hjT9SRPe4TGw+WAieaykxqKlfCJ3gOxvFh0AebK4sgkbv6wkVtk7aX67EytxDykfPX+0hTUxZrYw37bhjTxnk7xp3BgbawswgtrswPf9E83g4KoAvI7P1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627688; c=relaxed/simple;
	bh=uSgklIfTBTRtR8NqjKKehdwNRJd7avUzqLCSPkGtOKo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZrbV++FDMnWc+lfJNjoo/jJr7mbiUXouXWCdMl1eaKYdx4ewRwyaMPgpbZtgcDVvCIfvif42QpC++iRXur5wmLkQ9Lr+n/sJEuhz76vECz9/fCc+15MPGVj6ShgwpV+ajCkPCHMjfugDUlNO0wlX8S0T6nwmBQbxOy9E6x+9BOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WSOeTDXq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZUj471A4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6194oHcd1476683
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 09:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7IaXF97jLdxchN2ika1fIfI0vekMRGY1NwbKNgogDWQ=; b=WSOeTDXq8+TZwlKF
	NdH0NRAjhWcLkaYXHwwsMhpsc4CEzVwKZMdyTlO7hiQzAWu5H72PualL9Wm006uB
	VKjfOlpyc78E9nGErDCqWG79d7wJiZMpZKlq6lkOppUSBXX4B++tlFO3U9VcjTIM
	NliKRiRRcByyLqBIkuxlR+1P0HluzrGCSox35RPJUGC16apVmFSIp4U/FoI8zGDF
	cE6XuJBJfBPawySKAQ3vYma4xc3O3YkjvzJtjA55jNhZWxz/zIQLRX45mpa2sAns
	zj3UazYmKVoo2eYNr+DtnTD/bIoIlA5xsHKTljmtuwCHT9lodA2Ammn4O50+BSG4
	y197+Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c64hnkx4w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 09:01:27 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f54dd17395so944548137.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770627687; x=1771232487; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7IaXF97jLdxchN2ika1fIfI0vekMRGY1NwbKNgogDWQ=;
        b=ZUj471A4ulrM7lAfJYq6T08brn6SoQm0CVRJFfgMInDvF5GPhsY+47dLubw8ZJcIEE
         oPt4wOMSDIgbOLgl57K5cyr/1NaZtAUctwvGN3kNPOxFM6VjyTMT23CPTPxOHgNJgCsY
         cQIvI2cqDTSeIq+R+PZArcDRSGG85mxGVbFZ24F3sWlquNwKVv6nDZywDwO/xRU9KyFF
         wGiKOSW5CjxZFTgx3DEoGkOQuCm8k+UXR2YCd/7cntXPGXqoDHIXdkV/hhdOBtOFbZWr
         krV3MCe9w0FNdD5vgf2HcRzziLdm+4IlvtDwwyCJfarDLB8syDPcpcer3BIoLtUCzGgx
         G1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770627687; x=1771232487;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IaXF97jLdxchN2ika1fIfI0vekMRGY1NwbKNgogDWQ=;
        b=a8LZXDvND5kUYBjucAkxwaU38xTt5wmkYLKuuMCEVWD9TRvonycGYF/HeJRURdqbM+
         1z0CcMwfhgZSB5RasysKE1HkYvZoTBAjZwWB6jQJKI78nGHEjUUCwqPwXaEATfg47hJQ
         tSLuTDNhCt2o2La4SZdcC49AzyvtyUj2FL6ekpUDGfrEVrmAB6M96I6WPLL/JHvVlnMO
         HhzAMGTMuJnqco5VcnWoTRgAxf/+hyGdrrWUDvW0HctIBP6/RSuC/6oXmhmkbQ9//cYU
         rkqzY302aKtvDIQpkPBS1lcqBhkU/VXkDGIYy3/hT0pem8MlU6D3FLd4It8DhPXLSA7o
         bIVQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2nqZHhE161keUUcuCioWYKI5NTueTjEjnRnucqgAbt0Sd8Nsnhtz+q8LyDvYxBvcRZ75yM+RSHl9p@vger.kernel.org
X-Gm-Message-State: AOJu0YzMvy9UygQE15F9T4WtgAVnXcHm6dBAugHYL4mi6YpR1tCC2oQE
	Brtsj4btb69dgdLRNfkjOzF+VFcuMIM98BJcQSYx8GLHnu5pUSDqQ3bPfKR4RCbqoqsEn0HvVQw
	SohF8lC7L2IP/ZKor1NjUrSEY6HaO2aP9ktFfzPiBs4YzHzM3ikxSBuZSlGII99o3
X-Gm-Gg: AZuq6aJYIAeT8e7cA+yY4k4NNqrcia2TMslemRy22CgVCbl1SAqRb52GE7Y96LlwLZu
	f0WVvmmv5IOmAO4aeUTw2XHF8k5+eswA3qEgpY2qhlqFsDZfRYKzgARVDdRwFUKu1JxRdPByT64
	TeM1/vn1YB0Dsfeg2tmGGvcFzGgw5F0ysjuNLllv/zZsLAxHK8zyaI08PSU5rzc/YMmjB+o3PFh
	BVNG7jUYCmPSZ8nvSCavcC5+9WSm+b2alNIEHFdgy4n7WVZ3Xn82VxWPOzsiEoy0lkMjJdepdh9
	vV8QF+NSzUtHBVGkKWk5Mu+Plma7pxvNxcEwhaOjKudxy214y0fQLw5AEr2CIbOL3qcCTUbwRjk
	tXa7FUCxkvDHHH9uXscviAmSAT3k1X7PO7Xr4eLEH+jBPx5JlUpFb2V7O191PxbVbZWM=
X-Received: by 2002:a05:6102:441a:b0:5eb:fc32:9361 with SMTP id ada2fe7eead31-5fae87ca0cdmr1532107137.0.1770627686862;
        Mon, 09 Feb 2026 01:01:26 -0800 (PST)
X-Received: by 2002:a05:6102:441a:b0:5eb:fc32:9361 with SMTP id ada2fe7eead31-5fae87ca0cdmr1532104137.0.1770627686477;
        Mon, 09 Feb 2026 01:01:26 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ef25388dcsm295523666b.54.2026.02.09.01.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 01:01:25 -0800 (PST)
Message-ID: <22bdcbbf-8691-4dca-b8c2-06e43a81bb82@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 10:01:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8550: Add ACD levels for GPU
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260207-sm8550-acd-v1-1-53d084c58c9a@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260207-sm8550-acd-v1-1-53d084c58c9a@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: c-YCxMJgSjuxSzlEUQxcYXK_QAwgFm0c
X-Proofpoint-ORIG-GUID: c-YCxMJgSjuxSzlEUQxcYXK_QAwgFm0c
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3NCBTYWx0ZWRfX7Q4kT13uJqZX
 wo1r/gNkLJuuJpEl8YDPv+DA6VkvfEQR9iKKjorDEl5F0yd3twi8JjpqPVWsxuiDns2O8lcV0Sp
 UJXBfmF4xUEKN0Z3ZkkJFdsFU81aUdEF6JnG/66rlX91FaGK/BzHWdRauxCYD3StFwFhNcwyQ7N
 DBbcdviT+BCel7VHu8k8iDtGedyBJNk/es8mUwT06zi7lAkqLnOs3yqQnsAJ60pPsZVSK5ak+Yb
 ZLx0+ewU018Sa+bqAubmPcqvAsa1N79hOsYviQz9Cqu5DywCmFO0sW9km2Yvi8oupaoTj7NZE+g
 FL4BuoOe4KR6FAr3/aW/UPNoniKXb1RdjwY7mMel9HHuSjv1HkooH3DUpp9vznShlqNrJ5iGs9i
 YLesofyAZIF28BMV154AZVqTvJT8XOLti5kWyIAyvfAL0ZzQbXPkdU1EMW/SMq4aI5MfUHe0N/d
 ZLgNhZ0wslC1rC6MkTA==
X-Authority-Analysis: v=2.4 cv=SNlPlevH c=1 sm=1 tr=0 ts=6989a267 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=5Lzz3qiD8dwKc4tulZYA:9 a=QEXdDO2ut3YA:10
 a=J4saplWpJU0A:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263897-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B70E010D4DA
X-Rspamd-Action: no action

On 2/8/26 2:20 AM, Aaron Kling via B4 Relay wrote:
> From: Aaron Kling <webgeek1234@gmail.com>
> 
> Update GPU node to include acd level values.
> 
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

