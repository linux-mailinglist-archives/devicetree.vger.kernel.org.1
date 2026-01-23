Return-Path: <devicetree+bounces-258731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKayKpocc2mwsAAAu9opvQ
	(envelope-from <devicetree+bounces-258731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:00:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5504E7151B
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 08:00:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C24BF302BEB3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 06:54:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26D2B33A9CD;
	Fri, 23 Jan 2026 06:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b2/i92SU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SI1H/5CU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165A0338911
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:53:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151242; cv=pass; b=sDQAslSK1e4Bsvn3aV4enS1njimcUXxDdEhhocDH5Jf5CBzyHahYu4lmXWfWYeCk27FjyAV3sqg8YzYbCOI0BULxnjqWuo1FFzRLnxDWkAVkirS5MBkSHWGwZ9ySiPWAFqcZNB+YZ653sNMJCNKB2wXHPUVZVhTCX5ZUgu/3pTw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151242; c=relaxed/simple;
	bh=s/FYJs2yh0Mn9e9zJI3uFU6aHvmEISj88LdCakLhM38=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S9N2l+S7zVgFQtSfZ2O2a+4N2DjopYgDE/YjL2MlX5vzXtLY0zVXY2/9yoBXwu5sMjM/GdKmbErdcM+armVq+pC8e1Yye3CwzIi8Rx5RzUEa+hq1dAj7xnUFfaUC0oHBEo1/q57ImuL8m8cgVb9nOwbl1Oigp0RxR6WhinovYEE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b2/i92SU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SI1H/5CU; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N4K3Rn1117173
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:53:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s0VLzkj7kBAIvIeyO4Yw8QzJDHtyD3yHiv4q5/eKWxs=; b=b2/i92SUYiaESdwo
	VjpgHSfUiI9ApnLF4g+bN9LAW7zupMgnhCP4F9o8tLoJO7gv+VIdRuAgKrfweDLy
	YiZLR7ffNcNbVFBysSa3ZrZ0kOuzbK4SK/MykF6F/4rmfOTJy/xFloC7XR/3Cm7a
	00MPHEI8J1dbYMJ/4d2KB+bpBTZ6ZWt5ay5qh5w2ArRGpwyGy5wTEDUuU88a9ISf
	RJZcc39lq2fkNIq04SmCjD7HPi4JCp8INMfsq8smh0uOtBljMhR81ImMqt7kjgJH
	onVApRORNsJUohMQArtR0lksWoi4QJHICWbMkiMzJi91TVVjajjnQ/R5efOFfgxb
	Ijc6AQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bur1caf41-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:53:55 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a37ca7ffdso26519446d6.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 22:53:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769151234; cv=none;
        d=google.com; s=arc-20240605;
        b=Xn/mF8VRUVsYsVTxrmlKtRXKQX2+TWhlgi3YTA8PS7onGiCuiUjh5cZ068SkfBJNGv
         vDUhGFgN+bvvGYGXGKVyIqSn8xNrS+5C+0HMRzuGegXi2c2Hfj8Xa9llYGZWpGLbIrTM
         vP4TYvXLmh9noUQzOTo6HJwTJC75bjrx/HV20kw1QtRGIk22arJ8SDKDvyFWIHeq8nC0
         M58nZEP18qNmme/MN51AYeGxrwfbcoP+5e+ihDF+FgrxNaCImaEsB7JXWP6mbu4dXX7m
         UpA+JbQALLtr4KjtRqZF9frVPmEYEc5u/6XgAtAzn8ABEKPt9jF+eXF7g9UrefLN/cuB
         Ah+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s0VLzkj7kBAIvIeyO4Yw8QzJDHtyD3yHiv4q5/eKWxs=;
        fh=80BKBEBrqcWm7uq2Zw/+5E7MJNRwffvhUlgrr5MU9Kc=;
        b=RYSaLCYAXZQpc4/CJq9XHPehg63M52Q6AHO3axUJssYn8EL6ovZvabF+91p6wxEArm
         QTRq1cGk7MKdvCtVzcp82ymh8p1xjUu/PdurVT/5XfQL3agQ/WlC1G8gVI07ORkiFFM0
         U+zfysO+/TonLBeciSnFbH8IcOcpamNtA1b4E1V111mWFF6I3QhLWZGPhxmNAr6N7YIq
         U1fEtGagJJrrJnKPnnBStG51s92ykYS1EZofyQXerlRgVX3svon7+C2zwGfQ7VBwgfnf
         qEBsXfxdzYXbHCPhOa33uECxqxYUjGM4kqq9J3pR2LwYVp7MTdZHwVyOO99fHtr2se5B
         d0RQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769151234; x=1769756034; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s0VLzkj7kBAIvIeyO4Yw8QzJDHtyD3yHiv4q5/eKWxs=;
        b=SI1H/5CUAJRE1zhwCvHuQLPfVZgs/wh3gq7q9ChkLU3k98AkGnZz8JO8LKHb1ctwTC
         YMSNtqRA5+CHuZpMUZl1u3tldyBmyGpReolZJH3D8MF1YnCTt4EZoUGvbdJf0hNjgM3k
         j746wtmAlsrEeNwFvUydIESCsvEcx7mNzKloNywvaW/hwJlzNIrtofEtQ2S9umPu7X+B
         ZXE7+bN87a1aMBddyG9Z/ysEaSmCI2aJ18QJGKfa2oWQoTveVhXXjNuX1FIAa1oTvIE/
         HnwdNJTPbJ+kqLRdIgQnaKTB+8BiKp5Spr53QFlVwTk588CWALBzze2CMlGaPXB0zBM+
         1JtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769151234; x=1769756034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s0VLzkj7kBAIvIeyO4Yw8QzJDHtyD3yHiv4q5/eKWxs=;
        b=DeHnpsXgUwzQ+Pi07WAykoLd03CymlsBJQ2MQS78i0qD8Q2FirWuS3NnbnWgas7w7o
         StHaJL9W+0H3R2xlq6wn6oP/TTQ1CXDPrk6bd3tinai7BnCW5nR51ao4WNZRrE2R2Yxz
         lVDOJ3jB8qVVEs5leqMXty4e19vq6umWzmddugFGmKz5IpS5oH7p7Pxg+t90JW4iui3u
         ajlia5bCClNbGymz7ZqzXjC2z+8e6yRDU+FEr2pyEsN8SDXPxL4eNgwMm036xG5tJfeu
         cLDJtgBMBIyMDmae94ilb+JYqTKDAh9NVWgErtmcAAlMzvfUhAGnxFhEVXtFjIaXAiRq
         pQJA==
X-Forwarded-Encrypted: i=1; AJvYcCWeNEmwnuE0QTHl5tgX0X/Yx5Vve+L3xb02CeSGp1eZvHQvZJti/spxxppzL+n0V7+0RMqTCr35R5hs@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd7ae3UpnOYzFjsjC36iKkhKO2m6YEihLFeHaoBY7O/tzzWhnE
	dZrXreaAajmf7RdCVlj7cAxXndisueQP5yME72wDAwaQ0vlc1IlIWxG6eMSEvaBJQh5AlcVoQHC
	eWW9oNUXCYQOkZ2SCWK7qEPzGpZ0ndA10Hb6iqBN2ujubUiToBWGg6G5+0fIQoGb9sPqXhw4G9l
	yJhk3cj3HnnMlaRzYtsr5E6WpmptFXyEKFd6p0DIY=
X-Gm-Gg: AZuq6aLNnj3g1CEED1H4Wa8F5oEE/sbBjXgjq4goVyJwelmf3SWSZpbXxaS/gEuNitq
	GIP0ea3/O4ph/HTS8JHR6iqyEGLTmeisMz/QhFceQyded++EQHtmDv6tbVv+XL7WZ9FVeoH6OiQ
	Z8Z5AAk5TBK2BBfiVzkI0RPVUD0663TCek99qMKFZydT9hdymbrb2MNXXJzkaYQqy3+uZTRihjv
	fBggsgXbNUv5tVE1ehYR7/Q
X-Received: by 2002:ad4:5def:0:b0:880:63b1:3f57 with SMTP id 6a1803df08f44-8949020d656mr29225266d6.38.1769151233762;
        Thu, 22 Jan 2026 22:53:53 -0800 (PST)
X-Received: by 2002:ad4:5def:0:b0:880:63b1:3f57 with SMTP id
 6a1803df08f44-8949020d656mr29224416d6.38.1769151232692; Thu, 22 Jan 2026
 22:53:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122-sm6150_evk-v4-0-a908d49892e7@oss.qualcomm.com> <20260122-sm6150_evk-v4-2-a908d49892e7@oss.qualcomm.com>
In-Reply-To: <20260122-sm6150_evk-v4-2-a908d49892e7@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 07:53:41 +0100
X-Gm-Features: AZwV_QgW9xaHk1V60VCFg-RSltJOSQPj7qJ8VK_VnWofnB4yGozL2VT2va8zIr4
Message-ID: <CAFEp6-3qrfnn5EdLXX1+1qGtAZa=L4QS1nyCs23JnKq+oy=pqg@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: i2c: qcom-cci: Document sm6150 compatible
To: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=FswIPmrq c=1 sm=1 tr=0 ts=69731b03 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=AGkvFC_LJttw-4NvuOEA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: _K3bBJekTf3vCjJ-QR6oEwI5xI2cwXa7
X-Proofpoint-GUID: _K3bBJekTf3vCjJ-QR6oEwI5xI2cwXa7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDA1MSBTYWx0ZWRfXyUtIPzI81oU4
 HSmp9JbfeapYZxNBn2jxCWPAY54pQoP4hVbj65QcsCU3eb0nnxgy9zsByKv/WpN0qil7DuGm0Lo
 qYkB1RfZPe/frNXV9qTWB5x+SteT8X3fiopdRmTFk7kp3umvACCugAUyncrTjpjUCHzdWq2J/3q
 vviUEpPFHfzPA2iUxVbfXKNYSzm7lpOvs+lbYa78JqHRs/pSogWhgpq5d1//ZdE3P83pqhul5tq
 BLyNJ2lXrlQ/jwtZDEsgpAReww2XJA4hpN/Mgk0P2G9JNVLJtZletZV4kEMSM5FaBLhFLsIIV+9
 2QkvMabXGP6FwYdjiWEmeRbN20Q3ZcVcxQ1lMXfob4JmWRh1zc8H+AsY13tTURD+xl2Ln4G1n3M
 GADKnuPQjSFHUjp8FvXLEf8dYcsb8TaeP/IxijdSapAcnvI/02Tu7DSmPe9U94iKsdQ9nNO7mPy
 SveUL+BfL3us7HBA4IQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230051
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258731-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 5504E7151B
X-Rspamd-Action: no action

On Thu, Jan 22, 2026 at 11:41=E2=80=AFAM Wenmeng Liu
<wenmeng.liu@oss.qualcomm.com> wrote:
>
> Add the sm6150 CCI device string compatible.
>
> SM6150 include three clock:
> bus: Bus clock responsible for data transfer.
> iface: Interface clock responsible for register read and write.
> cci: Clock for CCI core operations.
>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>


> ---
>  Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Do=
cumentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index a3fe1eea6aece9685674feaa5ec53765c1ce23d8..d3f87da54fcc14a8f808f34c9=
4551583d8deaabc 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -33,6 +33,7 @@ properties:
>                - qcom,sc8280xp-cci
>                - qcom,sdm670-cci
>                - qcom,sdm845-cci
> +              - qcom,sm6150-cci
>                - qcom,sm6350-cci
>                - qcom,sm8250-cci
>                - qcom,sm8450-cci
> @@ -249,6 +250,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,sa8775p-cci
> +              - qcom,sm6150-cci
>                - qcom,sm8550-cci
>                - qcom,sm8650-cci
>                - qcom,x1e80100-cci
>
> --
> 2.34.1
>

