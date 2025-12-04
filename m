Return-Path: <devicetree+bounces-244262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B30ECA2DF0
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 09:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3AAB4301D338
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 08:57:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0703B332902;
	Thu,  4 Dec 2025 08:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pSL3jfTs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XNcie8VW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908CB331235
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 08:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764838658; cv=none; b=VRZYl0arxKlzNPnDFDBOu6HhLg+n5fg/PIW9raHVP/Zynia6jOBaM7sAcQKU2LYKwjS3KEu7eLAWSSoFTcA6QzPecZORPFspJZMyIAaxlXQnmmRjS1QMQ7SdIhgWxi9lkjEgNOIdtK4gPJadGoMnZw9sDpW38ydMeRaRoU1PMQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764838658; c=relaxed/simple;
	bh=8tjVzC92Ku6LBOQ7yyVJcYI8tJ4TxG/xvk7KTFvqY98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eVZ0b+mqDXDCBB130DnTjHw/LM2GtkEHQWLK8O85uwN/AMXzpvGVdNWhI5FQWHTPwJPkMHE5yhDCjZ+KmWOPuEkEooBJhm6dImIcKYdLDASU5hswEoTai+SF+7cv6nTRRoGPw1ivRz0SBrPPL+Vu2Cs7Vi0uh5dtlaPoVmS6UGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pSL3jfTs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XNcie8VW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468pdd551702
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 08:57:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xICJ7I0+31kwSjnrDhNKTolj
	kZmJzA1RIJuvbqVd3UY=; b=pSL3jfTsVukMeLq8jSD6mbML1lmYA8vO8GKOKOAA
	wqAblrXwLnzsQmk5TFT0KDjeFK6pfhSOER8R6W7MyEtzWzc/ctQ82HhKY00w2v6o
	gF5tnV748sgraaSfxqfWvzot+dkC1kAupzpkGhll5acv53LPoBPx+y8lXDKbpgeA
	zNa4brBNMy6kkFP+v67Ti6/B2q8sOd/aGF1VWenuyhCT5ItnsuM8u9vSRAVUO/uQ
	kuk7T1rbuOhJSBs5hEa0GaYuD8YeNzwGOIR8tKaBQjaNQ+Bq4KgOXrpajEDGscMX
	JROukZ7xH37ZOh9ylcjAsv5NQGTj1BPDTbLmIQuC+J+I8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atmmdbbuv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 08:57:36 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b51396f3efso119623785a.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 00:57:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764838656; x=1765443456; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xICJ7I0+31kwSjnrDhNKToljkZmJzA1RIJuvbqVd3UY=;
        b=XNcie8VWNM6MAvHteGKi/WuX6ih+Pf7NvmRXP1tyPsLo88iOiYhWm8J3ou82o8Chb9
         xvmnRlLaFvC+jRzWuCSVv6exqt6heAY6Raf3JhDE+C3EjcPVDuDygGGePDHV9PSQg0Q6
         duIT1/7XHEAFDOcDms9wcwfo9HyFF81XNu/XIw0QJbcOOuiQ9n+j/ZTLlTsmr3OFQaZd
         qrRInf1InlE5t4D5xkrnR0CMuCZYqQcmLNXG1LertFvJ+0ytwdMNsuo4iXrOTQzdT5SS
         sMGEh0iznzR6yxpXFHJbfgbEzQamiDQxS4ThGZQvNvE6bN3SdHutGMZg2CEiJ0GDkf9/
         iCYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764838656; x=1765443456;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xICJ7I0+31kwSjnrDhNKToljkZmJzA1RIJuvbqVd3UY=;
        b=Wq61dDDLWWkaSbNttMiMXYn2MHzDnfWUgkHpo+TKeKVOW1R1DUviOLreYencpILTu8
         MTzQuKTYyJ9lkXwPwhm8/3AFDRqGovzE1gxq9/nP55c7b1H2D1KsB8X1Kdv3obNnaJ8s
         J1dF/e2nQ3A8FUMLSQT8YdMv5LVRoqKgaJYtWNmZqPpxlrSEqTA+MGDseXqJ+UTdDBDA
         jf/M3ZmO1eoGLtuqLvckhu0TOYr3b/DJzjmBqkNGfYaVbd6FdI1zCiyCK3d/fiTvjzQH
         78YsPE0nyXETnFOZRJ9fCEL7PsrqeHJNAKeJJMGEGrvgf2WBzp3VFv5Cz/+S6H0FofSy
         3kSw==
X-Forwarded-Encrypted: i=1; AJvYcCWLQyy0fBX9m4kpOAAC7FUEYuRkrkje3cnG3aRZOfPl+FzjV6NYbRPO8bExK8fBqLOLG4ApVP3ZvwlW@vger.kernel.org
X-Gm-Message-State: AOJu0YxWRXi7gKG0VCd1rZGcQBPzuA8W8NRdK+8OlpyVQC+0bXaJ8Beb
	zbXftPC0k6vgYSjxcu157OZvVd5GQcQfB52sk84TlqsWxb2AGhSklRafEjE6G+W5Fo59g+t+FGq
	y4gQizd7EagR3yZD3E0QDMaUK1HKsq3GsNAUmrBE8sHWxERs2C6/tyMZ408prbRSTSwjvGfkm1/
	M=
X-Gm-Gg: ASbGnctW4R0U4PWFJvbmDD60cTA5JzmAlwSdtm3vP3PcOLZKMojcfsKnBDPirMuZpzh
	Ck7PXv/c6BJtPZPRuHP5LafEvjE8JFOeXph9MHb7SPfmbMfSdyLI4Nc6zP2Fy/Gs3lJBhDnvriR
	JMYZJz8Bnr5LuLx/pQbeENckkBHqXOYTzkHNe4dzFhCZrL0ahTJGNbpK4RK/QdmyGd2BJhad5VC
	RcUzRy/h4Kxe15lplELgMKBlkN81SZx1DkkConosd9S92LqvkXHdXhpTV+1t4j1qf8fSWC94awm
	eKTsYOzMo42U/S4AiEsxkjB5c0pq7Hh6VbcqHSBCebIUkf0386xsQqLrln9mQvOlN6OV2ubp/Nl
	gnM35oY4=
X-Received: by 2002:a05:620a:6914:b0:8b2:7558:409c with SMTP id af79cd13be357-8b618169800mr305205485a.36.1764838655687;
        Thu, 04 Dec 2025 00:57:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGUhFq/ZFibq2s5zYzGkFo5RKQ1SZ51JrB6XLgoRH8A5PWbw/6PUfDelEWU+NTrDWM4zkSr3A==
X-Received: by 2002:a05:620a:6914:b0:8b2:7558:409c with SMTP id af79cd13be357-8b618169800mr305203385a.36.1764838655260;
        Thu, 04 Dec 2025 00:57:35 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d353f75sm2010209f8f.42.2025.12.04.00.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 00:57:34 -0800 (PST)
Date: Thu, 4 Dec 2025 10:57:32 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH V6 1/3] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
Message-ID: <5wypgitbmhjinhle462zgx5b2otehzcqfm7fehsic7gjoglmkq@3rcewuzrpyiu>
References: <20251202081017.2234677-1-sarthak.garg@oss.qualcomm.com>
 <20251202081017.2234677-2-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251202081017.2234677-2-sarthak.garg@oss.qualcomm.com>
X-Proofpoint-GUID: 39GBH99C2OEChEoi-2-m73NkR2_p0OUe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3MiBTYWx0ZWRfX7Y6F819rOY13
 YqdxCoJk6b9jT4pKO7NVXeF0GKxoD9H9/Hdcb4DI+OcEO8c0+vDLBIb3Hg96fh3E4k6hiLVsyfw
 01IsCRneUF8N3t/XKSHMy5U0sXePG1atBu73hEYsu2KShFImG3TfaIGcINXAmiOOHVZKWi0Ktye
 JPnh4sWulVX5uCg0da1uXvef6H9wgxEmzvp/fIzfv4YmQjISizGFShBDkvxDhJyu819gO3UnVQo
 FMXCqZ/8VkzRLlBCElNQaefFnrhaU0kCFXBP+he+srIRr/ipv9zcclPrbyFGBx7CmtJ/u8u2wQp
 ZJgU1Hnf3Cd5TnAueHVavfhjDp/vrTnk3LM8p1LCsS3ztKBQIaqcRzkfwWdBokzk+EMRYe5FeuO
 7iEOGKCeX0PZ427kQzwHKqimT/aBXA==
X-Proofpoint-ORIG-GUID: 39GBH99C2OEChEoi-2-m73NkR2_p0OUe
X-Authority-Analysis: v=2.4 cv=Ctays34D c=1 sm=1 tr=0 ts=69314d00 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=C_7bzabjvVxi82VMiCAA:9
 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1011 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040072

On 25-12-02 13:40:15, Sarthak Garg wrote:
> Add SD Card host controller for sm8750 soc.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
 
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

