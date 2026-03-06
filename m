Return-Path: <devicetree+bounces-272198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHO+Nr7rqmmOYAEAu9opvQ
	(envelope-from <devicetree+bounces-272198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:59:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F99722338E
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 356A33013DF6
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10F0E3ACF1F;
	Fri,  6 Mar 2026 14:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JqRY06qI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fEbQTNpq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B8F3ACA58
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772809146; cv=none; b=pbGOgKv9tlpJ1oVosW+Wgcuk+04Cp8TsYKaFsevuRkx9SbzCMLgWPmhTQQdytik0vTYuNoMvpAaq+Txf8OolMQPF3tqu20EuPCxnYRx9l5PQG50mZXeFV/sDdzj1dN9FG64tK+8vhAWeGjWEoRk6ZLY44QmpuGLA4euSxoOLQdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772809146; c=relaxed/simple;
	bh=zDU3nG+muSIOzIj9gCz/o3LKbW2qRCNwREdAhhe58Kk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MbzRA8xa/FfKNlbY+Q9oK5s8n/PGMXdk/ZoAx8vmHsZtS/QFJitqnxWv3YfNoQ5whxlOCCtV604DeQchtDWKMALp+V09HU4r+8NiMH1rYfa7CdwKFwcBJXim8XaaprqyxWBNbZ6u9cGjGJJyIF7Fpe4UMTnsg6s5+vFVZdG7ovE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JqRY06qI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fEbQTNpq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 626BbT8l3727625
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 14:59:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SicqCEC+Cf3RXmELrJU9hVUSf0lNhpUobm3pP+KlJ8s=; b=JqRY06qIGWeVfffZ
	cyrzfrcCGyGI4SbcJvcw9tyEpnVBkRm0Wdb1HToapDV+xuOToEyfJ+q5ao5mwYI4
	iFz8P4JNVKjrP3NjTWXuzmCdEXtwxaCZ5iZ2wHXmHmVUkQg/uk3nDeWQxBTnuLiL
	LQ/Ley9oBv9R1+9wssYd2ytX/gjS/Qbe+h54lxV6+5EtdKDFX/0xzPY/rZ+77Ce5
	2EbufuGgsOs5OEAC9UW9LFpfikjT/4XzZIj85z+cHbvViyZ6dJ/epgcHE6tRyY2X
	d8sJekXhTYpW6AXEHlWtxYGxNRQBb7/KpL02ZNoLmbU53Y00dC/n0IqJOioKTx8N
	JVM1Og==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqgp437cp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 14:59:04 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ae405e95f5so67378325ad.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772809144; x=1773413944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SicqCEC+Cf3RXmELrJU9hVUSf0lNhpUobm3pP+KlJ8s=;
        b=fEbQTNpqjkFUIo4uyHkCTCBq5/xxH+QhEk4wwcFZ0MEjFlfYggiDWSHE/pedVV6cbw
         UHxizWa+ysdHpvoraWu4RG1fEfE3t7d7pPsSrFpQTFocV8AaD6YbGnkNsI2/9C0ss15K
         Bkmvn3QMIbM+ynAAn1D+n1autUyVq4yp9sDZa1HFIZggBK0iHnL/+tTMkHOUGCFi/23/
         LAYH0OG3NGwUBalR47hUh2zo77GwT3+itk21f5yxhagDl6OqTC1GbD87XvUrCfsKxeK6
         8m7a6qUk2+9ncwczVOSFUYebf5s2oL6uZOje7jPZD2gTK7qdTuxroeyZ3xBT97LP6KFy
         zMhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772809144; x=1773413944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SicqCEC+Cf3RXmELrJU9hVUSf0lNhpUobm3pP+KlJ8s=;
        b=atcBZHMQwEHrI8NHzIOTlTFRbRv8Pn+cGVqZXuOXvi2VodnJIdQhz5+96ytqqVbyhs
         nakTVDjby9jIISSDu+tEZ+Nhu9Aasw5cHG3Gd8aDz1rpjzUPqpPDPd/SM/hANngpRpHu
         ejZO2XRlazDEUA5vMTKrJFbyJ59v7ZZNh5bVDkk/JsQ+QGw2dIJenmBOR2lGHNKI/gUk
         2ch9TqoFvBnQYFdpKtjjF+YBTASZ66mnruteiZWwZ17OAEhFxw+PQV0FWhZrhZtADUb0
         yqGDFiZjMvZpKIaYGFuvNMOHGC3enY6ITaYMFAftiT/wbCDNkaCAHM8tvYb0W9vRMnHb
         FXMw==
X-Forwarded-Encrypted: i=1; AJvYcCXn5kPZIZq62Nz8/klYX7FXs50bO7agVrQRuKtyoHOjv6PzBcFPJJEJiRdKARnZ44SN+z0sKeQeKE5T@vger.kernel.org
X-Gm-Message-State: AOJu0YyuryaeZYZVCNpdV2VKKcarL8jE5mJa329ggOMhwUclXyTi0pqU
	zBrTnONxaw5dxsHYm4bXdak8IO1zfY3FgH+ZFc4SC/DKxNw7nCfENFpSnmPib+T8nY5nuOQ1owD
	+NIxkOwIdMxnCgsn1md281+bNoTniG+c/TPJl+JoMtkX4DrShEBwn6ffIEumoZKel
X-Gm-Gg: ATEYQzzAuqzLz9Jxk2ygA40EKNNuyz4oAJRCKafi61GG8EJffy0kI0j/NKPOiRIgWku
	Cl+9MzL1i9X95zojJzIii6KrAOrUGeERE1xfFylrbKJPAQr4KpCNH0j7dFiYoHo9+PmT9z3HIEt
	tYVeb51w0V4q8VnfRh96eyVztr0Ww7welgnUS2i7QYVXMdfGMlE+OWDXOSHgpE9EhF66D0DH5Lg
	hlGpsfYouoLDXj+DZfDOzN1zvJz3M1pGuK4ZmTBB17A4Fjui/kjYKpCGJLdTcesFsKBt0arPdqV
	ZptARMxWywsOpQxVs703+pvjW8gNmnBAkuevUIhFl33noV2lKXJNUDE4YLqHXi/R5TSN3s2WWTL
	haITBQqaPkZZyHiS0N4nOk5qOPlx2O5FVieNMhWuLCqiB4O4mFuMDbQ+/TWFkjQLcdUiXqX9p+f
	YVk0b2eP2jxgU=
X-Received: by 2002:a17:902:d2d0:b0:2ab:3ac6:8d03 with SMTP id d9443c01a7336-2ae824f49abmr24686445ad.36.1772809143812;
        Fri, 06 Mar 2026 06:59:03 -0800 (PST)
X-Received: by 2002:a17:902:d2d0:b0:2ab:3ac6:8d03 with SMTP id d9443c01a7336-2ae824f49abmr24685995ad.36.1772809143233;
        Fri, 06 Mar 2026 06:59:03 -0800 (PST)
Received: from ?IPV6:2401:4900:88f5:81:e13b:ce78:7823:d9c3? ([2401:4900:88f5:81:e13b:ce78:7823:d9c3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83f74280sm21622935ad.53.2026.03.06.06.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 06:59:02 -0800 (PST)
Message-ID: <5898e0da-ab69-43bc-a6e7-d492e409df91@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 20:28:54 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: x1e80100: Add CAMCC block
 definition
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
 <20260304-purwa-videocc-camcc-v2-6-dbbd2d258bd6@oss.qualcomm.com>
 <3f69539c-7383-4321-8cc6-1f5a8cc23822@kernel.org>
 <dd256b85-b88f-4163-a1e0-52c976089eae@kernel.org>
 <1a22f7e9-8a48-448c-a035-7c487e81a96e@linaro.org>
Content-Language: en-US
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
In-Reply-To: <1a22f7e9-8a48-448c-a035-7c487e81a96e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: xG0mTiMjgLDfkV2DK0X2loNwuJaQayVY
X-Authority-Analysis: v=2.4 cv=LegxKzfi c=1 sm=1 tr=0 ts=69aaebb8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=OE-71Kp-Uj3oNjI3yJUA:9
 a=QEXdDO2ut3YA:10 a=QYH75iMubAgA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDE0MyBTYWx0ZWRfX2f9hlkFCJoRy
 BMeviBkFy9Pm9VM3eySyK44Wx91eR2TVa7bQGTUo8U4WyhMFa19rq5uDlRBcCvuVRcLcIuIDoYU
 ZVlcx6XEnXxgxbh/peI6b9ufso9YTQe+VRw8Nc+qBTpoGcIoHQkXKqlks0sWXpyYDyVIIO8jbow
 ECEcfxlqvEcodDg9EAP8ySWKqSjPRPqyIE34EJ5engxlxCX22CLjRNoFkHxv6jlhVJ4L7Lsd/oU
 30+NOxUnkxhO2V17o3WmAlcgZ43FdP+Olb1rR19Uy7hcjNhjFXE5rvV/lFHKkkAmiLQhXPk4rVU
 tqUxFPZIrAToW+D01sFlt9pRPYADM7Gs+QbtDbI5da9sz8CoYbXQKpclGkYCQDo5HyZa0aC8X32
 au5Zy70mdsG5ckCLRrkqSL+SXXzIBcfOv5mtUebU3zseeJmjXgZkv5Z/2yozW7IZt/UgXD9ZHUJ
 e6w/EAFpjjuxQy1yP2A==
X-Proofpoint-GUID: xG0mTiMjgLDfkV2DK0X2loNwuJaQayVY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060143
X-Rspamd-Queue-Id: 9F99722338E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-272198-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 3/5/2026 6:41 PM, Bryan O'Donoghue wrote:
> On 05/03/2026 12:00, Krzysztof Kozlowski wrote:
>> Actually I checked now - all the people reviewed commit without fixes
>> tag and you just added.
> 
> Eh ...
> 
> Please don't do that with my SoB patch !
> 

Sorry, based on comments on v1, I squashed other Purwa DT patch to this
change and added fixes tag. I will drop the fixes tag in next series.

Thanks,
Jagadeesh


