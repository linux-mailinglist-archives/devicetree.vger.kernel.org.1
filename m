Return-Path: <devicetree+bounces-262227-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLeGFGvngWnjLwMAu9opvQ
	(envelope-from <devicetree+bounces-262227-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:17:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D201D8E5B
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 13:17:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0EF4F304B231
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 12:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A1B33E348;
	Tue,  3 Feb 2026 12:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jG7XWJ42";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KLQm2f3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0E0F33EAEA
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 12:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120756; cv=none; b=W9BjtObxqo+KCwboE1CyxYz2GID259bmge0JrQviR/TYChOs5ASH2rIbxIYXRrzqQQ3iOFEcxK8LATV4a5XvfuioB23eh6XoMa0mg0+y7E+tTNprB7M1jIxt5TXrtbDToHFMTeZPh9okAm2smoJcr8OOz8l+rb079o4m8iuxHQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120756; c=relaxed/simple;
	bh=LptzFJUyjpykLlcey9VFL00nRZ573wuxgKxYMTMRdZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lzAKHt5mZZOm+ZhwrAiHm1Tk4QUlgnjOkzdG1pp1UZRd663oCC3ZqH0P5GP7QsKqDePcDLqMspXnJeIXUYaIHWuI+k038c8GNin+f646GU0c8/b23k3+pHNgXBtIpjcG9v7AY6091tNJyZpKr0yt+mLJWSoPftO1i3dNa4DSVQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jG7XWJ42; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KLQm2f3r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613A3vZ61591683
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 12:12:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Vx1+aGrw4+vH/imMb6fHNF9uGEkcIk4iAr7YXm2HhE=; b=jG7XWJ428mS4Paui
	AVuRZOsQZ1NH3qqSsZx6lppGrg9C3NspsYWjJuv2+PHmPMQeIyJj+DGusix2ouiv
	tHaeNpcdX3ExuUG1wGiDIrqy57MaC9kKkF6yRmKwq/XzN5VM/DDMf/cnN/MEKmGU
	9bSV96XM4b7LibLwLI9h9NJPuQtAMidiMF5S/8ibPIcTgnXW+CoDy7V3TjlcT2xY
	NWHDeo3MOAwlai1x25XMOBvTshUJD9DyGoJMiALyLO6UM35FDpzKVthGYg7D6DaM
	Ri+VQChyiOjI2G3THsOslwh4pSYfA6eG8qIqh5OLIvByt7xLZlbFJGW/sHTXElZf
	mMxQcQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3exjgb0u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 12:12:34 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8888ae5976aso16715246d6.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 04:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770120753; x=1770725553; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Vx1+aGrw4+vH/imMb6fHNF9uGEkcIk4iAr7YXm2HhE=;
        b=KLQm2f3r8yJ4lzOi8SLvyp5owO/DGdRhXxym1pf6Gqoy4Vv4e20Rdouvjke3NoecVZ
         IrPBFMz8p+kGycj9dThma0mZWL2DkLisD6AI8Qd4MRoyNzsxIV4DAiw9P5mEipWGsQP1
         +nParv1bx6Vj/qu0dGi7mmxHNNI/d730PqAV5xG1oo8IJ13R9pya7xf3kdw382OM+h2l
         EOmzkm/msH4jKsNV85HexaXj+WUDQDTJM34VrsI+L52R1/3Y/J0BDYJ3PxSm7lRyNDgI
         kcQvQ3Y/psA26a+2Ja7Nkr3cSgDuwh1/62W6lepuepoX8fZLIjinMQA5XHuJqNL5CQu/
         0s/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770120753; x=1770725553;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/Vx1+aGrw4+vH/imMb6fHNF9uGEkcIk4iAr7YXm2HhE=;
        b=X2AVLow+Lq+CwYv7gsx+XrZqbeG3uBdevy6FdH8X9Flavtej3bNLjeql9sC+zig6xW
         Zd/s3P0vrg49IR5AJ2DXdq3hi+IjY6mN71xWuZikRPU8yjdH2CDieHzsupUsqcqMmq0i
         w2tJvs6Jyt5mt2xfsc3Wt9x65eN+9IYtouE0rjs7Ibmz4ZtDp/gSg9tRP5nexadbbtba
         WOJhVD6FznVDKIghNvRb58Ny5k/K3yYWWbWHhPg6a6TVL8JLbp6HvW/FvQoh2AMldgDu
         LcL8/o87UeUCUG8APePAOO/suoHpuRRwEyvHYwaNjvg2z/eY0A4xhAuTXb8TNOrfudp+
         NhoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaWEWZczrUGZeZEB7k+4onLhInItHyTpVzCi/fqYTrq7nFr78VSvr6CO1c/e1gpHr16Y2w5g2Cqd0g@vger.kernel.org
X-Gm-Message-State: AOJu0YznoHx/lngfpMoLWu/yh5dnLqIwn6KUfdaFxmbe5heSMdu3WBmj
	/2Tdzo3XY3cIiD7dlKBe03YvpFXPmDhCcmCDe5qTUZ4+yu/DdvRzCxB2dENtnHppd/qIsjVstb1
	e++J7ulSxi41Kb8QX6XeMXKuKvgsohbZe3djTxLciYyilFeukqMvno0263/jdmsME6Fyc/wio
X-Gm-Gg: AZuq6aIrOTn8pKo+KEfXF4ZOSOQMZfS4D9aX1UWZidFRlmT6uP4CqtebubnkeubT9LU
	GD2XPSjccK0PA51qsuXs27DfP+RXXovMJbRKdAiobs8ckmvGUHtA7NRvMIxS6m8pCAvU9VZvsKb
	ms582+FILmAq9e9vruuoq9V0VlZ7YBMqgs7UOXZy+gbmpKLQPftDsZXOWidFSWW4CCHjmPgcJGC
	pdxs0t6O1wt4QnBQ9GID79XIl36qARIFiF576usGv0O1la6aWcW0ECH7BGed4+mQGVcM6vqzD0N
	W7PlkRk0w+3yZHFRgU1XTCEPkEfZODh5jfL4HoWfYMgrEODrEHN6hIQn1LJN51qYkyl8LzAhvcv
	YWQJ4fx9OCCxHyE4vAnUUMBWvV9BYeU4XlhyCECyShM+8wE08J1hkddnloi2JlEbKzqE=
X-Received: by 2002:a05:6214:810b:b0:894:7135:8fb3 with SMTP id 6a1803df08f44-894ea0b070bmr142778856d6.4.1770120753142;
        Tue, 03 Feb 2026 04:12:33 -0800 (PST)
X-Received: by 2002:a05:6214:810b:b0:894:7135:8fb3 with SMTP id 6a1803df08f44-894ea0b070bmr142778516d6.4.1770120752729;
        Tue, 03 Feb 2026 04:12:32 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b40efb01sm9177383a12.0.2026.02.03.04.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Feb 2026 04:12:32 -0800 (PST)
Message-ID: <044b1634-ee5c-4438-962b-cb535e35c135@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 13:12:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/13] soc: qcom: geni-se: Introduce helper API for
 resource initialization
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
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com
References: <20260202180922.1692428-1-praveen.talari@oss.qualcomm.com>
 <20260202180922.1692428-4-praveen.talari@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260202180922.1692428-4-praveen.talari@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8c1lBWk c=1 sm=1 tr=0 ts=6981e632 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eLxjEvbIFn9X0h5zv8UA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: uUlc9z7YH-wmUyolBB-6pMUCukpsPcDD
X-Proofpoint-ORIG-GUID: uUlc9z7YH-wmUyolBB-6pMUCukpsPcDD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA5NyBTYWx0ZWRfXzY9zYxUg6MBn
 x8mC/LcL3Pp/OokUb0TpM1mWObgxQYfKFW/TwHFsUSDrSH9wdQxgiB9V1VsmQR7n60p+uFBsa72
 ANXdiFCecR06W8+07Eqlgg4of6YbGd9zrwOEc9JjF3WaSGdEzsO2BinzFIukxGvaZSLbIDMnwiD
 uE+5aNQ5d4XLw50LI2OjWZTNkyh0ij4IfGC9VAlPm+3k984N9W3SP4NSlX+vX8PLRSb9/TBGzvN
 4tTfl0S151q2LnuvjXh2i9amLIAqtoGK5/gl6imQkY7yRf8jAHK1alS5qdgcI89YkhklXi4OpEe
 pLHTenK7X1l75sM8FrT1dvZvwPWpqgrrlzAs0g7f+FUEnC8OekMDqQkHddTI7WixHGC3SQfoGBl
 95iemJPFYWKM/IymQKJL7BMBaYyKKPH3sTgn5xFExRggLL8uWqcR3tSWIyS4IyhqjX/zBNzHuFB
 a4toZ1X1oPnngnHhfGQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_03,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030097
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
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-262227-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D201D8E5B
X-Rspamd-Action: no action

On 2/2/26 7:09 PM, Praveen Talari wrote:
> The GENI Serial Engine drivers (I2C, SPI, and SERIAL) currently duplicate
> code for initializing shared resources such as clocks and interconnect
> paths.
> 
> Introduce a new helper API, geni_se_resources_init(), to centralize this
> initialization logic, improving modularity and simplifying the probe
> function.
> 
> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

