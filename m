Return-Path: <devicetree+bounces-218408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C920B7F9B2
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 373EB16B67E
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F45F328978;
	Wed, 17 Sep 2025 13:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ctPjgPV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BC6C3233F2
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116690; cv=none; b=ufFFLZUJvn3t/A8ZHKK5BLPj1Y0qlyd50Gjz0qWKeK1Gnmi/OWDdGjmBfij351tRQPh22lqb+YOIctHqWmBmpfo2wAbhL7zGHrZuiHjnBhBW9m6kKuBxEJXsQqt2N++8d4LiSBX4ucyK/0es9yh8t+2m1h7C/Xq/jg0ayGSVbTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116690; c=relaxed/simple;
	bh=vUQvMzwQ3ZD1hwhkE21bB2D3wf/HfeAJ/XRGoPgoT50=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qhbE6BDowbeg60ygt4nI86OZBhptXwPUfbl0Bg/V2DZVJgZ/lEqyioigDxd9Op3U854Usd7rvH7SXiVGNYeoufiHhxbmzlh7KQ0Bf9tKAJexUWztNZ/+9E042b2nDoUizQtppz3jcssLjByZnVylxesrkvIemPHst8VM9WR4k/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ctPjgPV/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HBMKUu030267
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nzSq6p8Sbr7XpckIwbd1Ueyncy25BkLwVzaplFhdajs=; b=ctPjgPV/kwfpsGp7
	EVBu+xn9lUgayfxTnG+Qe6j2XX/MPJgu15evRp7QuwSwjp21zwuseFjptpJqpqez
	DOTEmBZe4KyqQ20zgUEF5FORo+XyhyI3OdxKC5iVF7OsLVRdP1/IpE0XFcHSlpTy
	6J4pIdR8WyJXbKn4IOzE3E5RGmt1pBVltGoyfQ7VVm/I+TPFjb9RzJu24b0+okn2
	zc+C8kgdX5BPXPcdsCYVRKZOBAvOpQ1TJ+9WAVq3nzBvvPhYOv0nDZ+KehrZn1sU
	yoYGZ29aps9OM9MhU2d7jJTrEhSiILZ+Dh/ZU4yVgn/igeTOADQNSIyrOJ+2ZUeD
	JKvsmw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497v1j8e8b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:44:47 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b79aa110d7so7747351cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:44:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116686; x=1758721486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nzSq6p8Sbr7XpckIwbd1Ueyncy25BkLwVzaplFhdajs=;
        b=qDr5rNLp+P53CJBXsw2kTDJpErSwo6zKry+vuD6vWTw4bX+Yqg1qw6gKLaSPjHb/UI
         Plj+LGmj9ynVB4JxtGFTT6rS/OolWfL86VPizQgYnqaI7O+/6XSklsoTnueRR6PjEYTs
         +umUS8hskL73//99RwZr+vOS4g9T3NoW72Zab/yAQm0XhCvXIJ/mwFTZ9CqJKGz2RUIB
         2Lirp8BOHnX3nvRFAWJlFw8GYvPAeETi3qF3Yun777IwwUZWApC2L8Adz1jt0duNs2Iv
         Z4zi41PfyNp5LGNpwitCAogxc7s7eJvEr1iTZvImRmsJsnLAmisP5tCCcAYvPtLekeH+
         KonA==
X-Forwarded-Encrypted: i=1; AJvYcCU7swUb07J90NmsZgHpHmOr1nHGSvZsOGaMTveoDMGM2ZXQcUXCUV+AC2JBmo7IkzGJtzvMZjJrfEF1@vger.kernel.org
X-Gm-Message-State: AOJu0YwFNzjMoWczpyRfZ7Pd7tjSBFzVFc+Yosz/2ampG/qFRkH0dQHk
	idETQ1IJb42ET4fNS6bZvqS00ScKUL6XrHSbxWxhzl2eN73BDudChtV6h9i7sVPCVssYWHLRRWA
	9I08I3z/q47QpmwedMh4BjrAJ92zg0CMRwssT6eXNhI3WyMSFUYY7Z5+wUh0BbA/n
X-Gm-Gg: ASbGncuQ9Wux9wSbo7zKTnyEuOAHAlAeo4IVZmQmBY4OZKV7HOcAYYvAT68LByL9qWB
	CUR5a6Ol4Vmz2I7ciCncv5WPTLY1mi8oMy/cpAw51H8d7rUQ6uw/93JUPIkSZLy20E30yqIwW3D
	4DGh0wKxnSZVMDSEi6xDenQ6OPBlYz8nG1up6TSzcsJHJouH+TgrcpldHsjPR2G8AKl9QbYW08x
	cLznvmgMujYuKWbH3di4SEKsfyhpDUpRUg0LmmlWNwfyW7qPNa84KC1wVzuQnX2x4IHTlC823MU
	wlQcRdrHTDMO/GW7sNvan4wSJ/9CVIAL2hwhtsZ40nL0RGdkXMoAAErp/1wzmTQIy1gQlKave0N
	Fz9xHwJmDFuTtVnWcp6rjQQ==
X-Received: by 2002:ac8:7c4e:0:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4ba6833f385mr16864911cf.7.1758116686119;
        Wed, 17 Sep 2025 06:44:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkIhr8rNJXDx1RAe7AAc2URQZK0PBlD1E0CbqMIoGy9FQdSRFRguiWp/NEMgT3vBZtYX2NZQ==
X-Received: by 2002:ac8:7c4e:0:b0:4b3:4590:ab6d with SMTP id d75a77b69052e-4ba6833f385mr16864601cf.7.1758116685387;
        Wed, 17 Sep 2025 06:44:45 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f2122sm1376734766b.85.2025.09.17.06.44.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:44:44 -0700 (PDT)
Message-ID: <04b9140e-db90-472a-a550-b369670b02c7@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:44:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/13] arm64: dts: qcom: sdm845-lg-common: Add
 chassis-type
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-8-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-8-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tOdDkjt_BqVf-E3_r2q14A7bILex3gDL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDExMCBTYWx0ZWRfX9v3aGBeH4/p+
 pFootQGzPTOTn2r+c9+0SrLanPut2yctBSxKWKnpXJzG6zws89V0N7Yla3hqC1+U72UIAU2Qqbe
 fcxld37Lbg5trZ0r429APsNc9R8GYlK85e8rGGCpCBWLlR9gbEVjM3Q7A/f7RFZoLC22KNlZtoy
 7hR31+kXMR5ZPresJq4EF8zrMGbLrNSjVzDsAU/Y87gWMCyruIteIk+QwWK9CuTDyPduTynJgM3
 fxcgMdVI3JvdqDiuQz3k1OFbOcq2K5haIwODNGKy/K3pNd/g0DuoVhdsZ5RuzlJxqkS3Q8WBc0t
 ZJ9//ONzNTPnup0T1/So/d0k/JLVy8d5zqdeK92nnnRP1xrzk6Iy9ZiqIVEAcfuSSa3YPHd2YCo
 p8CdAErS
X-Authority-Analysis: v=2.4 cv=AeqxH2XG c=1 sm=1 tr=0 ts=68cabb4f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=xpcYJZ5K4HInNErYrfIA:9 a=QEXdDO2ut3YA:10 a=IQdlk4_VRkkA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: tOdDkjt_BqVf-E3_r2q14A7bILex3gDL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 phishscore=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170110

On 9/17/25 3:09 AM, Paul Sajna wrote:
> The sdm845-lg devices are all phones, therefore handset chassis
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

