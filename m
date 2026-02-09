Return-Path: <devicetree+bounces-263892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACxpEIWhiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC7B10D446
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 09:57:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DB44301158A
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:55:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B522B32470A;
	Mon,  9 Feb 2026 08:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VUDY78uU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q8zqu0cg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81854238C1A
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627308; cv=none; b=al2v/2IkvGzpImrn+cEOzaDeQ1izNanUGSbPDSkSiBPg0xhakoX1tXg+DQtEut2jeDPMLS/0IPAoiUxlD7QMvXLeKx8yqFJdOG9gXPuAb4WEzfJPxAxP/q0deQ+OXbl0zh7ZtApW1le+iQEIyPiRey5yf7KraHgLhopcoDjaS0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627308; c=relaxed/simple;
	bh=58l67S906LFRZ2E7JlGdAL508GJNqZlQ0ppbREsAgNY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fIWr4yjWGMbU9n3elYI9J91bRwzMgQP5k3dzlyrOHF+ecWNb/zZLx9TFZf6DTaSe/zCKPfuTTWoRgN2YRQ248R+V37zIAHe87ycIXovRkHqKq12RQl5xaVChxHDCqSmYXRYyxqfu6LE4eeNVfFZMZiDVL6vjNT8ezpIHQf6TJhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VUDY78uU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q8zqu0cg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6197sW7l1930268
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:55:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D2N6PwzjNFJOHpo5rcP4OeRPgwXvudu/yJkXaSbC2SA=; b=VUDY78uUyW7R+ttf
	RD9gxnjbIq/CH6ZdQZADeLMPHXMHC5B7znLTZm7q52r3OXIgE/6bY267i83JFdmF
	Crno1vKr2U3D8oLbnMR+5pZpdetNIZtsE27t5S18tvl1fG/kmvY7nd9Lj39e0G0o
	a3UwWUnckoMhKXhWmoGihx0NF9fggGoWIBgpITmjya7GX+S3LY2d7G47VlslsBbs
	NmPP5gkHTTx8J8GtlKqfXwIsXds/xx0j4R+ygaKRf/4SvoOba6sskJV/uifuBHdg
	OIGqCuSZokQ8FfYNXpgSy637VvIIQEet3CPiZx08Dum3CULpCME9Md3xJNIYJjLe
	PG6F/w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5xdeve64-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:55:07 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c536c9d2f7so154721685a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:55:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770627307; x=1771232107; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D2N6PwzjNFJOHpo5rcP4OeRPgwXvudu/yJkXaSbC2SA=;
        b=Q8zqu0cgrZhhFB21WQf+V9Z1WvkOtHrJKDgrYrNg/4BnhwQ7rt1+2UErbbmPDTbCFZ
         FGynr6W4OyH+YFyKSwxvYS8dRq6/tmXKEeKISijwLOnoyIJjREMJj9JBtESnlEZltQEx
         gl/8kWZ9NFUCT8BKrply4ncSpidCLdDBE5Yt3hW7s4iFjkVYRnNPVZ7mGuYl+xAm5dtZ
         b0ILIs8Sz7Hxqb/bex3PweDzKxQrsxyqFTJI5qJWX0AUbEmzdjGa5hGEOYSaPOjyh7+p
         9gm/zdR4u01bgf/oqn9ZZpJYdCjSnburqzXa3+yVgPzMPGIcj2o5stlgfMPQRWc5Saya
         VT4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770627307; x=1771232107;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2N6PwzjNFJOHpo5rcP4OeRPgwXvudu/yJkXaSbC2SA=;
        b=a4IncIEBGTOPpPMpCJhQDPhM8WXpEzGqoAdJSr3J9fKgcW56mUAqPcbLqGtYtoBUnf
         n56a9297/dalxQ5oWL1zQOaB0nEnrtDD9uQXkFPXnDrK3InW9bU7E0ncEUy6Eobqzfoe
         ZaS3PLpd2Pq3JqykUJ9DzhoCfFfhWE1pL8zYSvjGYgnMhJILhg1egL/S5fo7joagw61o
         GpV8utl38GAnlsrfWKSnnMvHlG29/H4JLm0P/ACRWmvsx/5bZUwPPVDCkYlxeO7RjxOI
         A5UXgJNpM2CTBJ/7PmoFwt7gmnW5Q4sKbsC4qXjfGRDc38gl+Ai0bM7EVxsCXQDjpm5g
         NJdg==
X-Forwarded-Encrypted: i=1; AJvYcCU4v3uvqgRgs+2ggh54wN6xoeqy9Dkd21IEUA9+WNZHB7nlJrNmP/haCsRtdgfeLFojAjHl55zZ0Zgm@vger.kernel.org
X-Gm-Message-State: AOJu0YwOvtFj+ItwFrJOFYIl7JIMvVJFXNSNlntDCYxfGvYwIm8ASvT9
	57vkwrHvN/S65kVjh2DV89OOMqTm/jZgx2WOG/nGaP+MBIaDY6kT7fl7jFCvseitNqrCxQbuC8M
	JYQE2iJks8XV6LyS8Mdq/ljgMdcfhtwOxF3RFaQ+pSNN1fBOGth0eRmSoWfBqYXll
X-Gm-Gg: AZuq6aIeYN53/eEW0hoM9eJHaRK+Pjhxnh5ZcXagjyQxlQEl3yNhO4E36yDOXbKSADd
	nzsHW3bdt4InB2va8pQglURqfPgJpe6PGuNVwADjNdR2aqx6Wxr2SlR5xZw2/cSkwYvpyCK3dr5
	9x6uw6bzcb3lkb+y/VznIfhVQcgLp+vN50y7JQkHaq5yqd3dLoKQnH5dV1vW4fBIQ6vTRqAFMfL
	REhLe6eOtAiUMZOU4/7n1ONH2BqmV1n3+xSAZTNDRhSQauZFwzT+Lz5kOb78AwfaJ5qTVyDc3cO
	M6KG0jr4WN0rAggioDimVXzPmBaPyZWk0970w2t5GjZBq8RKcB2J/jv7+YscdvD608nZ1bNvinx
	0Qs+43jl/GBxRnFL0SuY8Q4S1MIDH/Do2JsbfrAh72kYPohO70Qus+QByBHUevdwHFrQ=
X-Received: by 2002:a05:620a:2954:b0:8b2:df32:b900 with SMTP id af79cd13be357-8caef313a83mr1113945285a.4.1770627306826;
        Mon, 09 Feb 2026 00:55:06 -0800 (PST)
X-Received: by 2002:a05:620a:2954:b0:8b2:df32:b900 with SMTP id af79cd13be357-8caef313a83mr1113944185a.4.1770627306396;
        Mon, 09 Feb 2026 00:55:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65983eb67e2sm2653328a12.13.2026.02.09.00.55.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:55:05 -0800 (PST)
Message-ID: <7e96bff7-9b9f-40c5-b21d-663115a6459b@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:55:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] arm64: qcom: x1-vivobook-s15: add X1P42100 variant,
 restructure dts files
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>
References: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ddcaa/tW c=1 sm=1 tr=0 ts=6989a0eb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gqIJcZFvGj7nPKzR1FcA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: oHCI3F0wCZkl0zxet_W_8nXWk3D4yaGg
X-Proofpoint-GUID: oHCI3F0wCZkl0zxet_W_8nXWk3D4yaGg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3MyBTYWx0ZWRfX+G8ICpYNHds8
 mxYp26JSRb/kKjEKDXD687tP2fkOWhj9R+JGrrhaTyVPn7Gnicau7rz2l0TDOvnMMqMKvIXL+H/
 3v1qC37oxp+XcXDleWbsWZpZanv8bgraA/Vpi1D6wmkPlyLel6h4nwGSIzTkl/iJV2ulXKmD9Na
 bnOMTwTp/urkgF7BIu0s/ApapghQqQdHaHmBuapbvLPYbp8VJ5wPRUUiib8JS94zavhZcSbU0mk
 LFVPDrGnfts3hSJ/7gXMYapjWwXxGaQrxdHao4VO0R3O3GsgO3jUwYOhb7l+Y9pUVZtktO3QeLX
 Ro9rQCKzyW7iv5RgJ7/Dn0++nB3UindabgkL+xZPnksSvAhe8BGKrthgRlozJmu00tVgwUddVnb
 0xithivoF0t0+cWAO7Gtgf+Wq0RF1N/7tMhLcxgV54QCM+d8VZuauxpYmifPOOF9BjUa/sdzYzs
 WMrUAKPNIt1ehkVvLrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0 clxscore=1015 suspectscore=0 impostorscore=0
 malwarescore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602090073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-263892-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8BC7B10D446
X-Rspamd-Action: no action

On 2/8/26 10:25 PM, Jens Glathe via B4 Relay wrote:
> This patchset adds the X1P42100 variant of the ASUS Vivobook S15 [1]. To avoid
> redundant code, it pulls the part that is identical to both variants into
> x1-asus-vivobook-s15.dtsi. 
> 
> I have maintained the X1P42100 variant on my tree for about a year now, it has 
> been tested by quite a few users. Also added sound (not in this patchset) and 
> users operate this successfully.
> 
> [1]: https://www.asus.chhdakhdkom/de/laptops/for-home/vivobook/asus-vivobook-s-15-s5507/techspec/

I'm not super sure about this TLD..

Konrad



