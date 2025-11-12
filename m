Return-Path: <devicetree+bounces-237414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A57DC50DF3
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 08:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 989B4348811
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 07:12:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12AC728642A;
	Wed, 12 Nov 2025 07:11:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EqCO58Lc";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fUjJLjik"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897B0221FAC
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:11:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762931519; cv=none; b=CbSQvnPIMboe7mfC7tvUCSy8dWsRNO1G9HWOE7O2pSRhvgNTfGd3y0kmWcoCSOoUGULHaxEd2BUSQufHxhefortmbWdQloyUc6kEI2NahleG5QhUbSq1aimohZmT1qjd3RnE/RieVh0pw7KnIr7KtyVrZoxQMp8ZA4hs1z84yNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762931519; c=relaxed/simple;
	bh=QNm5as8w03q1nGnq6y4/Xul5+GATbCaXYGCv41u750c=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=pRSa22WSSuY/jR2BPRp8+fLxHkHm1tCMjHtbRIAXqfGBiOEGkmYjtm1pb4ZykKqq6KPL/hR0kQafnP/IWoAXhxt1bGO1GS4ohQ0L4Lk8STe84n0/F5+GK3MFDhdnkW1oCXiPrb2HxuTn+imGKZQYAkDUAXUDfgnNTUFTa13HGtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EqCO58Lc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fUjJLjik; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC3HaKk4053651
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:11:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=VYEoLUJo/ySlT5FF5Bj9pc
	H7SQ22bq/f+2ySX8qIxTI=; b=EqCO58LcydOvucTFZE2VAX+sxkdxUEqH7fA127
	M3Ea8cPFY6a8NGyMr92G5TkrIgu0/iLrVTdfDpyZtcSWKWQ1Rgl6EyYp1aHdaIqF
	uGMdo1EIAi67mGqLjuhLNsdSd5oTnqazBLnAaBYVByDQFgrVLFXIASqbx0gK2NyE
	l2F59H5RHn8LByp1IoCLfXAx7kVFVf1w48jfW8UpABKKKpKiTb7wTpqb8PBwh7gA
	83ET4RQZLOmwTz2bIgRAFOSTaDre9B8eS8QkBZ0dtq9YwBQtuhXi2rZS25Z8hv7t
	lT5I65fhu18OoekFtLMhkFFJHXlTcXG6pFMsnPg8KXqeU94g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acj6v8kb7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:11:56 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3437434f75cso138341a91.1
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 23:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762931516; x=1763536316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VYEoLUJo/ySlT5FF5Bj9pcH7SQ22bq/f+2ySX8qIxTI=;
        b=fUjJLjik1yUJv3uhB6xkx6At7Sb1hRJXXdUtFulapDEpEKum88xT2cSVW2plfb+Byj
         vZqUdd1K9aPYWMoC22aaL1fLEolqhCmYgM55t8jLtMXOGn2d1g+8xL+TFJLLyOJu36Sy
         YkwKkQUFbV7R00AEC4N/6gisRTlYDcrEv0PWCROEtcnosRVuybRj53HY5Zm0KdCNcGv7
         0qAERMNwtGk+AuQTwX3FedZM4+qndBjv+SoS1vpjEQtyzEtUTfQ7jDiDVVFGCK76xCdL
         65TKMrgqkzwcnTa3nH9YbKlkih8eyj1Y4U2ImuVEL0QqucKTBRXMTMuCFxabik1H6j8V
         Ahew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762931516; x=1763536316;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VYEoLUJo/ySlT5FF5Bj9pcH7SQ22bq/f+2ySX8qIxTI=;
        b=ZiUqTup/fOPtuvLqlRUgHULaGuLUwkfolf6WrZQ4MRl2IKcJp1M9iidgYu3oKEkMYs
         RpBMTWnEk6p6pi6JCT2f3reOpbjiCqLOfEZ1O0v5wHNIjMhTgfNy8QfLW9XAztiKY1UP
         fQQ52KQkHEwm9jQuBOfVT5HgXyuMlnYZTQbMSp5zYu9ioS4i1zCQanQHQYanUCzhEph2
         bfkwqo1OCGhOV49k5ZJVh07entSuX4OH4ztDeVCyRoZU9Skg7cYXgDRP/GAuCvuK4joq
         bwpxuwAYVou2hNX8rLmIeJqGce2liNDrGF7t7l8tqnvXNjVGhe05XJCd6pthHg10lk5r
         nQJw==
X-Forwarded-Encrypted: i=1; AJvYcCW7uaPvzAgrbPGhMlB9C78Nka1YmjBk6vuK0XdRhplLhKH8/uho3SbmM4BBXfgMJN64worn5oPDpyn5@vger.kernel.org
X-Gm-Message-State: AOJu0YzaO3VQ6G6FK4J7ZlEHJ94eC6pfbR6PSEmZ+AcRB1oC4YCPBoR5
	/8J+bZQIXkbmEcIk7xDvnwzZXlQdDYKFoIG+aJhTDMjmIyKXwmhYlmoJ1hk1mW+PaNkAAPxPljj
	7EI6oUhpcm33boHsEp1HT+zvIE1jiY4cCU7ieP5auGj/936J070EHM9Pd63c2wGNo
X-Gm-Gg: ASbGncuqoQqRw0rl82gKvaaOcXXsGLU8lxeY2ZYwjwKi6yoax/LAx0ROCttXIs6FPed
	2v/MgXA3cBzAzSgL1nWt7A+9+5d7NDLFiBvMOpQBZsAl2jr4lDYbu8OZ6FxGIMl1AOM9zSEc7Jy
	6ph1RvJSqfyJIFCNDXNDXqlsDRwvkEMp9mVTTZm3b0BbZGAp2RusimrluFK9i5NmlFB0TrxOZcV
	ew/jXOIj7JH7U7GBgS9x1M8hid2Dwz0af1uopFvy85pDqLUgaCftzqzR5KB8Md5v1ozzuj/XsXu
	IU94vL4O9xUrf8yE1Tijro0Xa+lTJ9J5eF8oE2eZbn9IMPtuoVOeL6sQtghHtbq6xfHJZTjcP68
	UNuQnEQqANOGS/Y3rxpcJVw==
X-Received: by 2002:a17:90a:f482:b0:343:e0f6:3770 with SMTP id 98e67ed59e1d1-343e0f63b57mr641741a91.1.1762931516051;
        Tue, 11 Nov 2025 23:11:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE6k7LYAcjTwU20hULchBA/1gc516UaI7nND+8Cli7IGNCnIJbqmEzeFagjXs9CcwySY8ED6A==
X-Received: by 2002:a17:90a:f482:b0:343:e0f6:3770 with SMTP id 98e67ed59e1d1-343e0f63b57mr641729a91.1.1762931515562;
        Tue, 11 Nov 2025 23:11:55 -0800 (PST)
Received: from hu-weiden-sha.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bbf18968e1dsm1748045a12.33.2025.11.11.23.11.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 23:11:55 -0800 (PST)
From: Wei Deng <wei.deng@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, quic_jiaymao@quicinc.com,
        quic_chezhou@quicinc.com, quic_shuaz@quicinc.com
Subject: [PATCH v2 0/1] arm64: dts: qcom: lemans-evk: Enable Bluetooth support
Date: Wed, 12 Nov 2025 12:41:46 +0530
Message-Id: <20251112071147.1450258-1-wei.deng@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: c6VBt6LcP2JDMruvaiXXUjRWbgQ3LXry
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA1NiBTYWx0ZWRfX2MaLo+KSLzTP
 +0HnCFDMtP/HqrKYn6Omp6L82/ID3J0pVy58dag80VhKW6s9bBOotsRpAX7ObepH183CVcPi7iX
 HL4AAmE3ZxcZtlIVwLU1v11YVncj26SSbB/q2gnw5yzKgNh0TyCwX5yDL2daz0B43J6y/4M5cm8
 f3ajm5jaM4gkotgQo0xWbEx58PKcP/W0eZQrQizHc+2m3VyZgAq5t5v1H5dU1sEOH0UKPmxQcQZ
 mBnyXbH2G9cTF7qMl/Ez1y8QMDHYr73+OR0Yw48rX6kyJzc9/17rEMhCirPyRugUMVYDJXJeAGY
 EuZrhyhuHBcnnwxd+9Q6RWrpeaupO94qFLPHVYcWByKNOhSE/XDQkQKuCUK9rDTveWSYSpX5nqW
 xzn/KlsilNaoZl/u2NU+NF72pzui+A==
X-Authority-Analysis: v=2.4 cv=f8dFxeyM c=1 sm=1 tr=0 ts=6914333c cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=NzzfBly6y60KycMFBWoA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: c6VBt6LcP2JDMruvaiXXUjRWbgQ3LXry
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_02,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120056

Changes for v2
- Update commit message
- Remove qup_uart17 settings
- Remove CC stable
- V1 link
  https://lore.kernel.org/all/20251110055709.319587-1-wei.deng@oss.qualcomm.com/

Wei Deng (1):
  arm64: dts: qcom: lemans-evk: Enable Bluetooth support

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 99 +++++++++++++++++++++++++
 1 file changed, 99 insertions(+)

-- 
2.25.1


