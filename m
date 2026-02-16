Return-Path: <devicetree+bounces-265811-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMLXJVcvk2ke2QEAu9opvQ
	(envelope-from <devicetree+bounces-265811-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:53:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A78144D66
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 15:53:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9656B301707E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:53:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087C131328A;
	Mon, 16 Feb 2026 14:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PqZ/ulcc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="La4ACJU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37273128BE
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771253586; cv=none; b=ZVoo7wYtFFNbeJ7XXtAwJ9/dWsTvzkNCR1EvliOHFZI8Mrb+Yxe5atM7u+sctrj7gSWiDvTl02E1LU3t/RJ1OMKR78JSoPuaShWes3QkQd7CHWacWvk4g4jGK65fSUiCFN9khXvwMfNNDjIefB+V4popOEJk0/VBN+eV00+l8BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771253586; c=relaxed/simple;
	bh=//3K8HdIM6iIVP3vHlJ8uNpIGBfV9QmTS5aaeAemVZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uU5H5PWl5FPYgv4J///V2Fq+4F7cey8aIwf9Y0SQKsw4kr4ItHAdlVA/vMaBFw46i3h84c3VC8n/3fKp9kgaN/8ZysLIsfCrvneUE4gT+Ec3SCuQC54bCp6DRPEM5GsHYbspYuiLDwRFMgbucewsWvcjDm4b14UDkyqielS5qxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PqZ/ulcc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=La4ACJU/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GA7gmG1921279
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UYOpEMLzfy7q9oSdUsVOLuafnhSAm2l7iQcWVRgB1kM=; b=PqZ/ulccZPDhxdyR
	tv+pmVGqyKh3sUTxJQ4z6vTy465xOGZ/BUENWKGg81prE9AIR6gSXSX9OGcKNffR
	HpBdG9qPJFM2yIMcyQQTicn7RIVLFu3s2BcrtmfyumOPV/1Ad4WewZcL44vOqpdk
	U+d0wS2V+JJgOAlPACnV3zY4QTW/wyJaOgBGTiPR3EAQX6qv08rncSXkc2pxT6ES
	BjMjMDLkBbnxkHwqmIb2qV6IT0A4Nr+h/Al0iNn9WooCdMaOuUIFmFTPx7BByrUw
	lBl5ZgR0i9e2r196og++oar2AOAww2HogRoi1BgyHUnkQPWP5JfHw+I9Ix2+jLKG
	jLWe0w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4caerc556h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:53:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70e610242so2020212985a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 06:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771253583; x=1771858383; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UYOpEMLzfy7q9oSdUsVOLuafnhSAm2l7iQcWVRgB1kM=;
        b=La4ACJU/KpFH9T54r+YiRVDtEwbza+xTRFxOTVp31klrIPNfk+FJLhQfKmRd7hXf9y
         HE5CjdYrDSRqUIWGiBCvHZuYLl6ukz0J28EyeEJbTzm5HnePFXQo52ld0NO/NQNxRY7z
         bvaXghWaCSfCuTi6NdR+UU6HNsS2XC1zwBrLjxc4JcC5vPXcamAcGp1uJXnbX6N3G4ty
         qM1IUk9X+LiQNdQaHN41MI5W71xVgreQLvpDw5mpyB4LCp6Qqr/osPPB8mY5JdV+og93
         K2mWvGemBLSDrPsMtRodfb4lt1rBV5g3GfupBcAc0wDTVSAOJXlaeGggkU52Wu4YEvzE
         NNCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771253583; x=1771858383;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYOpEMLzfy7q9oSdUsVOLuafnhSAm2l7iQcWVRgB1kM=;
        b=qXhJHGlKUAxJxoglGdpoK57RBjN5eZ407IvDbg6/oEygwoaB/l8iw2PmoQFkxlfhaU
         NniBwMOj+wU/0ZseON8LmEnxgjV+mNzLThgIuTqcwOWBwACHHkaZouLWDPHZQkEFSKEH
         jOxi75e8mxEzTcRKNkpXoLHgNqingxjikPZkjAnZmalMLD7F2UC0nqbe1wkEacPOuruN
         5+rLMQe+CDUhAMJj7mXsM9OyEKeqSYK8+xiIftxvqlJASFrSGtnhNEjeG6swVV0PjPm6
         y+EyutxDAno/aOpI5YqzmUQUMNfXC+86l2fgsBRYdMl9idteT1AEbcdXKC9As4Pejph8
         8JdA==
X-Gm-Message-State: AOJu0Yz0v6lFEM2norMg9FSEgv7d5ls9l/KEs8YwNA+Du6HL2v4fBwgO
	yl+UABqhNjyZa5T0XUAmZQ108D2U+UFIbByJDEtSAWWW9PwY9Srq8mPAtNKWtF2BxYb0bpiiJf4
	72qqybF5IOYJgHLWkGZ1qca/LfabDIJ5TjFYHE3J2sGVDWSGEdJBEMI3Ng1h8dr4j
X-Gm-Gg: AZuq6aLSY1VcvuOvGbyuEHyw8wOCtnl99xe+pinLR+1OpUHxYo4hC/83WEL+G60euEa
	mPEg7SBbtnh3wlQKyaz2nbkDxO1ARVIIdBVtpLBcAXGS1i+G25y8adAVf5rJX2TzEf2x4VbwCwu
	sdg82hkYwbXjBKRS87qNzMHY8UjDXIC30QK4rMijxsu1Ccfbmlo64viX741Z/SkDPuG7r7vzGt7
	sRVhX1GvLvgbOV5eAtFF/3ue8XSvTpiL8gBmqKa+IizwK4Ecazv27emkWnexqVSthHdyN7aS1B6
	9MFS5n5fOsfU535eeXGBmwDVaC9MeGRwFmRh26yF6p+xz0ZrKMbX4hIyXtH4tWy0sskEsWo0/Rb
	skfKFrthWdjt92gp7I2I/L6LvYjev0Nt8KUbmdTQFfdHgIE+nEg==
X-Received: by 2002:a05:620a:4407:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8cb422822dcmr1225631085a.21.1771253582868;
        Mon, 16 Feb 2026 06:53:02 -0800 (PST)
X-Received: by 2002:a05:620a:4407:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8cb422822dcmr1225627885a.21.1771253582361;
        Mon, 16 Feb 2026 06:53:02 -0800 (PST)
Received: from [192.168.1.29] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5b07fsm26796604f8f.2.2026.02.16.06.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 06:53:01 -0800 (PST)
Message-ID: <5337a9c5-f612-49be-8ddb-8148138d004d@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:53:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 01/16] dt-bindings: Add vendor prefix for Frontgrade
 Gaisler AB
To: Arun Muthusamy <arun.muthusamy@gaisler.com>, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mkl@pengutronix.de,
        mailhol@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-can@vger.kernel.org, Ludwig Rydberg <ludwig.rydberg@gaisler.com>
References: <20260216135344.23246-1-arun.muthusamy@gaisler.com>
 <20260216135344.23246-2-arun.muthusamy@gaisler.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTpLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+wsGXBBMB
 CgBBFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmkknB4CGwMFCRaWdJoFCwkIBwICIgIGFQoJ
 CAsCBBYCAwECHgcCF4AACgkQG5NDfTtBYpuCRw/+J19mfHuaPt205FXRSpogs/WWdheqNZ2s
 i50LIK7OJmBQ8+17LTCOV8MYgFTDRdWdM5PF2OafmVd7CT/K4B3pPfacHATtOqQFHYeHrGPf
 2+4QxUyHIfx+Wp4GixnqpbXc76nTDv+rX8EbAB7e+9X35oKSJf/YhLFjGOD1Nl/s1WwHTJtQ
 a2XSXZ2T9HXa+nKMQfaiQI4WoFXjSt+tsAFXAuq1SLarpct4h52z4Zk//ET6Xs0zCWXm9HEz
 v4WR/Q7sycHeCGwm2p4thRak/B7yDPFOlZAQNdwBsnCkoFE1qLXI8ZgoWNd4TlcjG9UJSwru
 s1WTQVprOBYdxPkvUOlaXYjDo2QsSaMilJioyJkrniJnc7sdzcfkwfdWSnC+2DbHd4wxrRtW
 kajTc7OnJEiM78U3/GfvXgxCwYV297yClzkUIWqVpY2HYLBgkI89ntnN95ePyTnLSQ8WIZJk
 ug0/WZfTmCxX0SMxfCYt36QwlWsImHpArS6xjTvUwUNTUYN6XxYZuYBmJQF9eLERK2z3KUeY
 2Ku5ZTm5axvlraM0VhUn8yv7G5Pciv7oGXJxrA6k4P9CAvHYeJSTXYnrLr/Kabn+6rc0my/l
 RMq9GeEUL3LbIUadL78yAtpf7HpNavYkVureuFD8xK8HntEHySnf7s2L28+kDbnDi27WR5kn
 u/POwU0EVUNcNAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDy
 fv4dEKuCqeh0hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOG
 mLPRIBkXHqJYoHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6
 H79LIsiYqf92H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4ar
 gt4e+jum3NwtyupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8
 nO2N5OsFJOcd5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFF
 knCmLpowhct95ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz
 7fMkcaZU+ok/+HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgN
 yxBZepj41oVqFPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMi
 p+12jgw4mGjy5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYC
 GwwWIQSb0H4ODFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92
 Vcmzn/jaEBcqyT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbTh
 LsSN1AuyP8wFKChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH
 5lSCjhP4VXiGq5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpF
 c1D/9NV/zIWBG1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzeP
 t/SvC0RhQXNjXKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60
 RtThnhKc2kLIzd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7q
 VT41xdJ6KqQMNGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZ
 v+PKIVf+zFKuh0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1q
 wom6QbU06ltbvJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHp
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <20260216135344.23246-2-arun.muthusamy@gaisler.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZJraWH7b c=1 sm=1 tr=0 ts=69932f4f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=ebG-ZW-8AAAA:8 a=EUspDBNiAAAA:8 a=HZE-oCv7Mry4y8xlBPYA:9 a=QEXdDO2ut3YA:10
 a=0lgtpPvCYYIA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Bj2TwAA_C77lQ_X2_dkp:22
X-Proofpoint-ORIG-GUID: j85Wxsx6Udwl6EiCWBu-QVdWC7A23uCs
X-Proofpoint-GUID: j85Wxsx6Udwl6EiCWBu-QVdWC7A23uCs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDEyNyBTYWx0ZWRfX5L4liVL1MxR6
 iRxXs1f2dyLpo2w9wu9GOFgPq5/1FrVeXlfJ4VN81/k7ceZtEqp5YlJ8WciwcN6m9P5k89GU+a6
 KXOLDLdp4AVAVEZzTMGakPMUIj5H8l2xg5XVWMetreOAn6zU4GyJjKc8Uj9umgpA/cKkzcx243v
 uMmMlcr9v0/cpvwcDHKN3Wmtm3hkr7gPqS8h0aCfLb5cUgSJcD80V/81G1XWjw5OrHGnf0Meplo
 07P2T0BxSaJomxKxrnG4Z939uaWEoQJUOIbSD1dqQKfgaIHJv0KnD3bx5l5L0YBDx8exVTBLPpt
 oVDa6gh2n9PB37VXv6Hl9jFFyIOmrBisnl5hUHOTBhRHaBnNuz6IigoMvGNBgFAOktgxb4C6KI4
 3o7bgYLtsnCu2+M5EdNkl/2apCr0naWqi+8FKlVruu4a+RsaiPaHQRzRVDpx3dviMV1M6D4R8Pz
 ci5uJfQVbd4edBY/Qqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-265811-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 10A78144D66
X-Rspamd-Action: no action

On 16/02/2026 14:53, Arun Muthusamy wrote:
> From: Ludwig Rydberg <ludwig.rydberg@gaisler.com>
> 
> Frontgrade Gaisler AB provides IP cores and supporting development tools
> for embedded processors based on the SPARC and RISC-V architectures.
> Some essential products are the LEON and NOEL synthesizable processor
> models together with a complete development environment and a library of
> IP cores (GRLIB).
> 
> The company specializes in digital hardware design (ASIC/FPGA) for both
> commercial and aerospace applications.
> 
> Web site: https://www.gaisler.com/
> 
> Signed-off-by: Arun Muthusamy <arun.muthusamy@gaisler.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Ludwig Rydberg <ludwig.rydberg@gaisler.com>

Incorrect DCO chain.

How did it even happen? Look at your previous patches and do not
introduce some random changes.

Best regards,
Krzysztof

